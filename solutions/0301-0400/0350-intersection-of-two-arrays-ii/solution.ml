let solve nums1 nums2 =
  let counts = Hashtbl.create 16 in
  List.iter
    (fun n ->
      let current = Option.value (Hashtbl.find_opt counts n) ~default:0 in
      Hashtbl.replace counts n (current + 1))
    nums1;
  let step (acc, tbl) n =
    match Hashtbl.find_opt tbl n with
    | Some count when count > 0 ->
        Hashtbl.replace tbl n (count - 1);
        (n :: acc, tbl)
    | _ -> (acc, tbl)
  in
  fst (List.fold_left step ([], counts) nums2)
