let solve address =
  String.concat ""
    (List.of_seq
       (Seq.map
          (fun c -> if c = '.' then "[.]" else String.make 1 c)
          (String.to_seq address)))
