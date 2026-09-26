let letters_for_digit = function
  | '2' -> [ "a"; "b"; "c" ]
  | '3' -> [ "d"; "e"; "f" ]
  | '4' -> [ "g"; "h"; "i" ]
  | '5' -> [ "j"; "k"; "l" ]
  | '6' -> [ "m"; "n"; "o" ]
  | '7' -> [ "p"; "q"; "r"; "s" ]
  | '8' -> [ "t"; "u"; "v" ]
  | '9' -> [ "w"; "x"; "y"; "z" ]
  | _ -> assert false
(* guaranteed by the problem's constraints: digits are always '2'-'9' *)

let solve digits =
  if digits = "" then []
  else
    let digit_letters =
      List.init (String.length digits) (fun i -> letters_for_digit digits.[i])
    in
    List.fold_left
      (fun combinations letters ->
        List.concat_map
          (fun combination ->
            List.map (fun letter -> combination ^ letter) letters)
          combinations)
      [ "" ] digit_letters
