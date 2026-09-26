let solve s =
  let rec skip_spaces i =
    if i >= 0 && s.[i] = ' ' then skip_spaces (i - 1) else i
  in
  let last = skip_spaces (String.length s - 1) in
  let rec find_start i =
    if i >= 0 && s.[i] <> ' ' then find_start (i - 1) else i
  in
  let start = find_start last in
  last - start
