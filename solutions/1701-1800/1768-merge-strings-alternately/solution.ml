let solve word1 word2 =
  let len1 = String.length word1 and len2 = String.length word2 in
  let buffer = Buffer.create (len1 + len2) in
  for i = 0 to max len1 len2 - 1 do
    if i < len1 then Buffer.add_char buffer word1.[i];
    if i < len2 then Buffer.add_char buffer word2.[i]
  done;
  Buffer.contents buffer
