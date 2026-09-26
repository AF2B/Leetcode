let solve nums =
  let seen_counts = Hashtbl.create 16 in
  let step (pairs, table) n =
    let seen_before = Option.value (Hashtbl.find_opt table n) ~default:0 in
    Hashtbl.replace table n (seen_before + 1);
    (pairs + seen_before, table)
  in
  fst (List.fold_left step (0, seen_counts) nums)
