let solve s =
  let score = ref 0 in
  for i = 0 to String.length s - 2 do
    score := !score + abs (Char.code s.[i] - Char.code s.[i + 1])
  done;
  !score
