let solve s num_rows =
  if num_rows <= 1 then s
  else begin
    let rows =
      Array.init num_rows (fun _ -> Buffer.create (String.length s / num_rows))
    in
    let period = (2 * num_rows) - 2 in
    String.iteri
      (fun i c ->
        let position_in_period = i mod period in
        let row =
          if position_in_period < num_rows then position_in_period
          else period - position_in_period
        in
        Buffer.add_char rows.(row) c)
      s;
    String.concat "" (Array.to_list (Array.map Buffer.contents rows))
  end
