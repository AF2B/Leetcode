let check_solve label s t expected =
  Alcotest.(check bool) label expected (Solution.solve s t)

let test_examples () =
  check_solve "anagram/nagaram" "anagram" "nagaram" true;
  check_solve "rat/car" "rat" "car" false

let () =
  Alcotest.run "242: Valid Anagram"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
