type error = Out_of_range of int

let min_num = 1
let max_num = 3999

let roman_symbols =
  [
    (1000, "M");
    (900, "CM");
    (500, "D");
    (400, "CD");
    (100, "C");
    (90, "XC");
    (50, "L");
    (40, "XL");
    (10, "X");
    (9, "IX");
    (5, "V");
    (4, "IV");
    (1, "I");
  ]

let rec build number = function
  | [] -> ""
  | (value, symbol) :: rest ->
      if number >= value then
        symbol ^ build (number - value) ((value, symbol) :: rest)
      else build number rest

let solve num =
  if num < min_num || num > max_num then Error (Out_of_range num)
  else Ok (build num roman_symbols)
