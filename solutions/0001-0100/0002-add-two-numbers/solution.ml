let solve l1 l2 =
  let step (l1, l2, carry) =
    match (l1, l2, carry) with
    | [], [], 0 -> None
    | [], [], c -> Some (c, ([], [], 0))
    | d :: rest, [], c | [], d :: rest, c ->
        let sum = d + c in
        Some (sum mod 10, (rest, [], sum / 10))
    | d1 :: rest1, d2 :: rest2, c ->
        let sum = d1 + d2 + c in
        Some (sum mod 10, (rest1, rest2, sum / 10))
  in
  List.of_seq (Seq.unfold step (l1, l2, 0))
