let solve arr k =
  let remainder_counts = Array.make k 0 in
  List.iter
    (fun n ->
      let remainder = ((n mod k) + k) mod k in
      remainder_counts.(remainder) <- remainder_counts.(remainder) + 1)
    arr;
  if remainder_counts.(0) mod 2 <> 0 then false
  else begin
    let balanced = ref true in
    for remainder = 1 to (k - 1) / 2 do
      if remainder_counts.(remainder) <> remainder_counts.(k - remainder) then
        balanced := false
    done;
    if k mod 2 = 0 && remainder_counts.(k / 2) mod 2 <> 0 then balanced := false;
    !balanced
  end
