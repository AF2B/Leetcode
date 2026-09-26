type error = Out_of_range of int

let max_n = 10_000

let fizz_buzz_word n =
  match (n mod 3, n mod 5) with
  | 0, 0 -> "FizzBuzz"
  | 0, _ -> "Fizz"
  | _, 0 -> "Buzz"
  | _, _ -> string_of_int n

let solve n =
  if n < 1 || n > max_n then Error (Out_of_range n)
  else Ok (List.init n (fun i -> fizz_buzz_word (i + 1)))
