let check_solve label input expected =
  Alcotest.(check int) label expected (Solution.solve input)

let test_examples () =
  check_solve "hello" "hello" 13;
  check_solve "zaz" "zaz" 50

let () =
  Alcotest.run "3110: Score of a String"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
