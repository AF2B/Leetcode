let solve s =
  let counts = Array.make 26 0 in
  String.iter
    (fun c ->
      counts.(Char.code c - Char.code 'a') <-
        counts.(Char.code c - Char.code 'a') + 1)
    s;
  let rec find_first i =
    if i >= String.length s then -1
    else if counts.(Char.code s.[i] - Char.code 'a') = 1 then i
    else find_first (i + 1)
  in
  find_first 0
