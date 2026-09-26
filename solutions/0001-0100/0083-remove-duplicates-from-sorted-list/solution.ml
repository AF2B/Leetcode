let rec solve = function
  | a :: (b :: _ as rest) -> if a = b then solve rest else a :: solve rest
  | ([ _ ] | []) as tail -> tail
