open Parsifal

let rec json_of_value ?options:(options=default_output_options) = function
  | VUnit -> "null"
  | VBool b -> string_of_bool b
  | VSimpleInt i | VInt (i, _, _) -> string_of_int i
  | VBigInt (s, _) | VString (s, true) -> "\"" ^ (hexdump s) ^ "\""
  | VString (s, false) ->
    (* TODO: Sordid hack to produce valid JSON structures
             To clean that up, some work is needed on VString constructor
             to keep trace of the source encoding. *)
    Str.global_replace (Str.regexp "\\\\x") "\\u00" (quote_string s)
  | VEnum (s, _, _, _) -> quote_string s

  | VList l ->
    let new_options = incr_indent options in
    let indent = options.indent
    and new_indent = new_options.indent in
    let handle_elt v = json_of_value ~options:new_options v in
    Printf.sprintf "[\n%s%s\n%s]" new_indent
      (String.concat (",\n" ^ new_indent) (List.map handle_elt l))
      indent

  | VRecord l -> begin
    try
      if options.oo_verbose
      then raise Not_found
      else string_of_value (List.assoc "@string_of" l)
    with Not_found -> begin
    let new_options = incr_indent options in
    let indent = options.indent
    and new_indent = new_options.indent in
      let handle_field accu (name, raw_v) = match (name, realise_value raw_v) with
	| _, VUnit -> accu
	| _, VOption None -> accu
	| name, v ->
	  if options.oo_verbose || (String.length name >= 1 && name.[0] <> '@')
	  then
	    (Printf.sprintf "%s: %s" (quote_string name)
	       (json_of_value ~options:new_options v))::accu
	  else accu
      in
      Printf.sprintf "{\n%s%s\n%s}" new_indent
	(String.concat (",\n" ^ new_indent) (List.rev (List.fold_left handle_field [] l)))
	indent
    end
  end

  | VOption None -> "null"
  | VOption (Some v) -> json_of_value v
  | VError _ -> failwith "json_of_value encountered an error in the value"
  | VLazy v -> json_of_value (Lazy.force v)
  | VAlias (n, v) ->
    if options.unfold_aliases
    then json_of_value (VRecord [n, v])
    else json_of_value v
  | VUnparsed v -> json_of_value v
