let solve l1 l2 =
  let rec go l1 l2 carry =
    match (l1, l2, carry) with
    | [], [], 0 -> []
    | [], [], c -> [ c ]
    | d :: rest, [], c | [], d :: rest, c ->
        let sum = d + c in
        (sum mod 10) :: go rest [] (sum / 10)
    | d1 :: rest1, d2 :: rest2, c ->
        let sum = d1 + d2 + c in
        (sum mod 10) :: go rest1 rest2 (sum / 10)
  in
  go l1 l2 0
