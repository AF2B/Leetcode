let check_solve label input expected =
  Alcotest.(check int) label expected (Solution.solve input)

let test_examples () =
  check_solve "leetcode" "leetcode" 0;
  check_solve "loveleetcode" "loveleetcode" 2;
  check_solve "aabb" "aabb" (-1)

let () =
  Alcotest.run "387: First Unique Character in a String"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
