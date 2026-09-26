let is_odd n = n mod 2 <> 0

let rec solve = function
  | a :: b :: c :: _ when is_odd a && is_odd b && is_odd c -> true
  | _ :: rest -> solve rest
  | [] -> false
