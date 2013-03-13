open Parsifal
open Ssl2

let ssl2_msgs = [
  "\x80\x2e\x01\x00\x02\x00\x15\x00\x00\x00\x10\x07\x00\xc0\x05\x00\x80\x03\x00\x80\x01\x00\x80\x06\x00\x40\x04\x00\x80\x02\x00\x80\x05\xdf\x37\xf1\xa7\x1a\x99\x21\x5c\x1b\xcb\x2a\x62\xff\x5d\xb3";

  "\x83\x52\x04\x00\x01\x00\x02\x03\x37\x00\x00\x00\x10\x30\x82\x03\x33\x30\x82\x02\x1b\xa0\x03\x02\x01\x02\x02\x01\x02\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x0b\x05\x00\x30\x43\x31\x0b\x30\x09\x06\x03\x55\x04\x06\x13\x02\x46\x52\x31\x0f\x30\x0d\x06\x03\x55\x04\x08\x13\x06\x46\x72\x61\x6e\x63\x65\x31\x0f\x30\x0d\x06\x03\x55\x04\x0a\x13\x06\x50\x46\x20\x53\x53\x4c\x31\x12\x30\x10\x06\x03\x55\x04\x03\x13\x09\x41\x43\x20\x50\x46\x20\x52\x53\x41\x30\x1e\x17\x0d\x31\x32\x30\x35\x33\x31\x31\x35\x33\x32\x32\x36\x5a\x17\x0d\x31\x32\x30\x36\x33\x30\x31\x35\x33\x32\x32\x36\x5a\x30\x46\x31\x0b\x30\x09\x06\x03\x55\x04\x06\x13\x02\x46\x52\x31\x0f\x30\x0d\x06\x03\x55\x04\x08\x13\x06\x46\x72\x61\x6e\x63\x65\x31\x0f\x30\x0d\x06\x03\x55\x04\x0a\x13\x06\x50\x46\x20\x53\x53\x4c\x31\x15\x30\x13\x06\x03\x55\x04\x03\x13\x0c\x77\x77\x77\x2e\x74\x6f\x74\x6f\x2e\x6f\x72\x67\x30\x82\x01\x22\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x01\x05\x00\x03\x82\x01\x0f\x00\x30\x82\x01\x0a\x02\x82\x01\x01\x00\xd4\x6d\x1b\x90\xea\x13\xd4\xac\x23\x15\x62\x43\x65\x4a\xbd\xd0\x19\x76\xa2\x56\x25\x44\xf4\xdd\x0c\x38\xb2\x96\x61\x51\x03\x53\x26\xd8\x20\x4b\x25\x19\x45\x78\xc1\xc3\xeb\x49\x14\xbe\xf7\x4b\xde\x9e\xea\x95\x78\x6f\xe4\x40\xef\x5d\x74\xc9\x98\xa0\xf9\x45\x4b\x63\x68\xe7\x65\x6d\xe4\xd4\xcd\x62\xdc\x0a\xd5\xd0\x28\xf4\x25\xf2\xc5\x8e\xc5\x2a\xe3\x75\x9f\x46\x03\x6d\x5a\x4d\x4c\x7e\x4d\x31\xee\xdd\x42\x9a\x61\xfc\x9a\xc6\xd6\xcd\x07\x91\x78\x70\xe5\x44\xee\x0e\x6b\xef\x26\xe9\xae\x00\x01\x28\x92\x78\xa5\x7d\xca\x7f\x70\x11\xf7\x43\x10\x4c\xc1\x08\x40\x2b\xff\xf2\x99\x97\x2a\x55\x9c\x10\xe0\x94\xa0\x06\xcc\xfd\x51\xfb\xc5\x47\xd0\xb2\x50\x00\x57\x59\x55\xab\xfb\x34\x75\x59\xe1\x24\x8f\xcc\x1c\xed\xd5\x19\xc3\x8b\x85\xe6\x47\xa2\x6f\x27\x45\x3d\x07\x57\x69\x30\x04\x5e\x63\x6a\x7c\xbb\xbe\xe9\xe3\x6f\x06\x74\xd3\x47\xb3\x0f\x94\xf3\x0b\x57\xf1\xb0\xd9\xb8\x2d\xd4\x74\x4a\xf0\x81\x8e\x4a\x2e\xe4\x94\x4f\xad\x87\x24\x86\x4c\xd1\x54\xd3\xca\xe3\x53\x45\x66\x20\xcb\x43\x90\xc4\xfc\x4e\x91\x26\x21\x8c\x19\x85\x0c\x6b\x02\x03\x01\x00\x01\xa3\x2f\x30\x2d\x30\x09\x06\x03\x55\x1d\x13\x04\x02\x30\x00\x30\x0b\x06\x03\x55\x1d\x0f\x04\x04\x03\x02\x05\xa0\x30\x13\x06\x03\x55\x1d\x25\x04\x0c\x30\x0a\x06\x08\x2b\x06\x01\x05\x05\x07\x03\x01\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x0b\x05\x00\x03\x82\x01\x01\x00\x0e\xb1\x46\x04\x33\x68\x4f\xfa\x93\xad\x0a\x76\x68\x87\xfc\xf6\x04\x2d\x47\xa3\x4d\xc1\x82\x43\x0a\x27\x1f\x90\xe0\x82\xfc\x25\x7d\x88\xa0\x79\x97\x7d\xa1\x4e\xf1\xde\xd0\xa7\xda\x6c\x13\x16\x95\x7c\x48\xf6\x73\xba\x81\x1c\xe1\x32\x7f\xff\x00\x9c\x96\x27\xee\xc4\x15\x02\x94\x8a\x53\x67\xf3\xe0\xd7\x4a\x88\x45\xd8\xce\xb5\xa6\x9a\xe0\x94\xc4\x1d\x12\xd2\xfb\x57\x4d\x7e\xb3\xbe\xe9\xfd\x0e\xc3\x58\x66\xdd\x5d\x2a\x61\x29\x1e\x9b\xf0\x86\x1d\xf6\x5f\x99\xac\x6a\xe3\x20\x91\x6a\x66\x8d\x52\x6a\xec\xb9\xa6\x33\x68\x09\x15\xa0\x11\xb6\x72\x72\x52\x83\x70\x96\x5e\xec\x41\x78\xb1\xf3\x15\x1b\x5d\x10\x0d\x05\xf7\xd6\x5e\x81\xfe\x02\xed\x92\xa4\xb6\xab\x23\x25\x2d\xaf\xff\xf9\x90\xb3\x3d\x02\xaa\x4a\xa4\xe7\x81\xf3\x7a\x16\xfe\xd8\x0b\x0b\xc4\xc6\x4f\x6a\x01\xc6\x60\x25\xb0\x18\x99\xbc\xc9\x75\x62\x8a\x48\x28\x11\xdb\x4f\x7e\x52\xfc\x0c\xee\x12\xf0\x95\x42\x14\x05\x06\x75\xa7\x34\x67\xc1\x99\x31\xab\xeb\x83\x41\xeb\xdf\x0c\x86\xc6\xab\xdf\x4d\x5e\xd0\x79\x62\xc8\xfc\xe9\xa8\xeb\x85\xe4\x59\xac\x5a\x2a\x39\x93\x3b\xcf\xe9\x60\xeb\x93\x34\x1e\x77\x31\x9f\x8f\x9e\xb0\x0c\x57\xaa\x30";

  "\x80\x03\x00\x00\x01";

  "\x80\x2e\x01\x00\x02\x00\x15\x00\x00\x00\x10\x07\x00\xc0\x05\x00\x80\x03\x00\x80\x01\x00\x80\x06\x00\x40\x04\x00\x80\x02\x00\x80\x0a\x4c\x2e\xbc\x53\xf6\x09\xfa\x54\xc7\x6a\xc3\x7c\x59\xbd\x9a";
  "\x83\x67\x04\x00\x01\x00\x02\x03\x37\x00\x15\x00\x10\x30\x82\x03\x33\x30\x82\x02\x1b\xa0\x03\x02\x01\x02\x02\x01\x02\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x0b\x05\x00\x30\x43\x31\x0b\x30\x09\x06\x03\x55\x04\x06\x13\x02\x46\x52\x31\x0f\x30\x0d\x06\x03\x55\x04\x08\x13\x06\x46\x72\x61\x6e\x63\x65\x31\x0f\x30\x0d\x06\x03\x55\x04\x0a\x13\x06\x50\x46\x20\x53\x53\x4c\x31\x12\x30\x10\x06\x03\x55\x04\x03\x13\x09\x41\x43\x20\x50\x46\x20\x52\x53\x41\x30\x1e\x17\x0d\x31\x32\x30\x35\x33\x31\x31\x35\x33\x32\x32\x36\x5a\x17\x0d\x31\x32\x30\x36\x33\x30\x31\x35\x33\x32\x32\x36\x5a\x30\x46\x31\x0b\x30\x09\x06\x03\x55\x04\x06\x13\x02\x46\x52\x31\x0f\x30\x0d\x06\x03\x55\x04\x08\x13\x06\x46\x72\x61\x6e\x63\x65\x31\x0f\x30\x0d\x06\x03\x55\x04\x0a\x13\x06\x50\x46\x20\x53\x53\x4c\x31\x15\x30\x13\x06\x03\x55\x04\x03\x13\x0c\x77\x77\x77\x2e\x74\x6f\x74\x6f\x2e\x6f\x72\x67\x30\x82\x01\x22\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x01\x05\x00\x03\x82\x01\x0f\x00\x30\x82\x01\x0a\x02\x82\x01\x01\x00\xd4\x6d\x1b\x90\xea\x13\xd4\xac\x23\x15\x62\x43\x65\x4a\xbd\xd0\x19\x76\xa2\x56\x25\x44\xf4\xdd\x0c\x38\xb2\x96\x61\x51\x03\x53\x26\xd8\x20\x4b\x25\x19\x45\x78\xc1\xc3\xeb\x49\x14\xbe\xf7\x4b\xde\x9e\xea\x95\x78\x6f\xe4\x40\xef\x5d\x74\xc9\x98\xa0\xf9\x45\x4b\x63\x68\xe7\x65\x6d\xe4\xd4\xcd\x62\xdc\x0a\xd5\xd0\x28\xf4\x25\xf2\xc5\x8e\xc5\x2a\xe3\x75\x9f\x46\x03\x6d\x5a\x4d\x4c\x7e\x4d\x31\xee\xdd\x42\x9a\x61\xfc\x9a\xc6\xd6\xcd\x07\x91\x78\x70\xe5\x44\xee\x0e\x6b\xef\x26\xe9\xae\x00\x01\x28\x92\x78\xa5\x7d\xca\x7f\x70\x11\xf7\x43\x10\x4c\xc1\x08\x40\x2b\xff\xf2\x99\x97\x2a\x55\x9c\x10\xe0\x94\xa0\x06\xcc\xfd\x51\xfb\xc5\x47\xd0\xb2\x50\x00\x57\x59\x55\xab\xfb\x34\x75\x59\xe1\x24\x8f\xcc\x1c\xed\xd5\x19\xc3\x8b\x85\xe6\x47\xa2\x6f\x27\x45\x3d\x07\x57\x69\x30\x04\x5e\x63\x6a\x7c\xbb\xbe\xe9\xe3\x6f\x06\x74\xd3\x47\xb3\x0f\x94\xf3\x0b\x57\xf1\xb0\xd9\xb8\x2d\xd4\x74\x4a\xf0\x81\x8e\x4a\x2e\xe4\x94\x4f\xad\x87\x24\x86\x4c\xd1\x54\xd3\xca\xe3\x53\x45\x66\x20\xcb\x43\x90\xc4\xfc\x4e\x91\x26\x21\x8c\x19\x85\x0c\x6b\x02\x03\x01\x00\x01\xa3\x2f\x30\x2d\x30\x09\x06\x03\x55\x1d\x13\x04\x02\x30\x00\x30\x0b\x06\x03\x55\x1d\x0f\x04\x04\x03\x02\x05\xa0\x30\x13\x06\x03\x55\x1d\x25\x04\x0c\x30\x0a\x06\x08\x2b\x06\x01\x05\x05\x07\x03\x01\x30\x0d\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x0b\x05\x00\x03\x82\x01\x01\x00\x0e\xb1\x46\x04\x33\x68\x4f\xfa\x93\xad\x0a\x76\x68\x87\xfc\xf6\x04\x2d\x47\xa3\x4d\xc1\x82\x43\x0a\x27\x1f\x90\xe0\x82\xfc\x25\x7d\x88\xa0\x79\x97\x7d\xa1\x4e\xf1\xde\xd0\xa7\xda\x6c\x13\x16\x95\x7c\x48\xf6\x73\xba\x81\x1c\xe1\x32\x7f\xff\x00\x9c\x96\x27\xee\xc4\x15\x02\x94\x8a\x53\x67\xf3\xe0\xd7\x4a\x88\x45\xd8\xce\xb5\xa6\x9a\xe0\x94\xc4\x1d\x12\xd2\xfb\x57\x4d\x7e\xb3\xbe\xe9\xfd\x0e\xc3\x58\x66\xdd\x5d\x2a\x61\x29\x1e\x9b\xf0\x86\x1d\xf6\x5f\x99\xac\x6a\xe3\x20\x91\x6a\x66\x8d\x52\x6a\xec\xb9\xa6\x33\x68\x09\x15\xa0\x11\xb6\x72\x72\x52\x83\x70\x96\x5e\xec\x41\x78\xb1\xf3\x15\x1b\x5d\x10\x0d\x05\xf7\xd6\x5e\x81\xfe\x02\xed\x92\xa4\xb6\xab\x23\x25\x2d\xaf\xff\xf9\x90\xb3\x3d\x02\xaa\x4a\xa4\xe7\x81\xf3\x7a\x16\xfe\xd8\x0b\x0b\xc4\xc6\x4f\x6a\x01\xc6\x60\x25\xb0\x18\x99\xbc\xc9\x75\x62\x8a\x48\x28\x11\xdb\x4f\x7e\x52\xfc\x0c\xee\x12\xf0\x95\x42\x14\x05\x06\x75\xa7\x34\x67\xc1\x99\x31\xab\xeb\x83\x41\xeb\xdf\x0c\x86\xc6\xab\xdf\x4d\x5e\xd0\x79\x62\xc8\xfc\xe9\xa8\xeb\x85\xe4\x59\xac\x5a\x2a\x39\x93\x3b\xcf\x07\x00\xc0\x05\x00\x80\x03\x00\x80\x01\x00\x80\x06\x00\x40\x04\x00\x80\x02\x00\x80\x9f\x22\x09\x84\xd7\x7d\x27\x70\xa0\xb1\x16\x27\xa2\x72\x2e\x2c";
  "\x81\x12\x02\x07\x00\xc0\x00\x00\x01\x00\x00\x08\xb4\x82\x39\x5d\xaf\xfa\xfc\xa9\xfa\xf5\x08\x55\x04\xb2\x11\x5c\xf9\x63\xe4\x73\x2d\x86\x09\xe8\x22\x41\x7e\x63\x99\xb9\x6f\xb8\x4e\x69\x70\x35\x86\xd7\x88\x1f\x62\xf6\x1e\x3e\x6d\x3c\x8c\x11\x13\x67\x45\x65\x39\x3a\x56\x1d\xc7\x74\x26\x8f\xb9\xcd\xb9\xd2\xd2\xcc\x98\x3a\xd6\xf1\x52\x51\xc9\x63\x7d\xf2\xdd\x22\x9a\x28\xf5\x87\x0c\x3b\x73\x80\x21\x13\x48\xc7\xf0\xbc\x99\x8a\x74\xea\xb1\x24\x19\xa5\xc1\xf2\x44\x05\x50\xa6\x13\x63\x37\x1f\x64\xae\xce\xdb\xc6\x0a\xa2\x97\xd8\x5f\xb1\x09\xd9\x48\x33\x66\x51\x52\x25\xdc\xb0\x04\x76\x42\x1c\x4b\xf0\xb0\x9e\xb8\x09\x24\xa3\x42\x4f\xbc\xea\xa6\xfe\x6c\xde\x04\x69\xa3\x22\xb8\x2f\xcd\x9f\xcd\x4a\x9c\x58\x3c\x30\x47\x1c\xf3\x81\xab\xa0\x38\x75\x4c\x33\x3d\xf9\xf8\x92\x94\x04\xec\x85\x93\x7d\xdf\xb4\x1a\xb3\x38\x04\xf7\xbf\xcc\x8a\x24\x86\x5c\x45\x5b\xd8\xd7\x1a\x9e\x7a\xdb\x53\xa1\x6a\x61\x19\xb0\x35\xb8\xdd\xb9\x46\xb2\x6f\x95\x28\x0d\xf7\xaa\x2e\x82\xd9\xbe\xe5\x65\x5b\xd1\xb3\xfe\xdf\xa2\x13\x61\x0f\x33\xf7\x16\x05\xc9\xc2\x5b\x9b\x96\x1d\x88\x10\xb3\xa3\x55\x4f\xc8\xcc\x95\x31\xb2\x2f\xb3\xb0\x5f"
]

let _ =
  try
    List.iter (fun s -> print_endline (print_ssl2_record (parse_ssl2_record { cleartext = true } (input_of_string "SSLv2 Message" s)))) ssl2_msgs;
    print_endline (print_ssl2_record (parse_ssl2_record { cleartext = false } (input_of_string "SSLv2 Encrypted Message" "\x00\x28\x07\x52\xa1\x76\x84\x5c\x34\xb0\xd0\x89\x96\x38\x83\xe7\xfb\xe2\x6a\x13\x6a\xb9\x41\xc6\x56\x71\x40\x89\x8e\x40\x69\x16\x4d\xf3\xfd\xf9\x74\xeb\x13\xf1\x86\xe3\xa9")));
  with
    | ParsingException (e, h) -> prerr_endline (string_of_exception e h); exit 1
    | e -> prerr_endline (Printexc.to_string e); exit 1

