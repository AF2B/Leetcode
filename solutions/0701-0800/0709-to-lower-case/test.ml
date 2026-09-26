let check_solve label input expected =
  Alcotest.(check string) label expected (Solution.solve input)

let test_examples () =
  check_solve "Hello" "Hello" "hello";
  check_solve "here" "here" "here";
  check_solve "LOVELY" "LOVELY" "lovely"

let () =
  Alcotest.run "709: To Lower Case"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
