let letter_counts s =
  let counts = Array.make 26 0 in
  String.iter
    (fun c ->
      counts.(Char.code c - Char.code 'a') <-
        counts.(Char.code c - Char.code 'a') + 1)
    s;
  counts

let solve s t =
  String.length s = String.length t && letter_counts s = letter_counts t
