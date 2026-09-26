let rec solve l1 l2 =
  match (l1, l2) with
  | [], l2 -> l2
  | l1, [] -> l1
  | h1 :: t1, h2 :: _ when h1 <= h2 -> h1 :: solve t1 l2
  | _, h2 :: t2 -> h2 :: solve l1 t2
