let check_solve label input expected =
  Alcotest.(check int) label expected (Solution.solve input)

let test_examples () =
  check_solve "Hello World" "Hello World" 5;
  check_solve "trailing/leading/internal spaces" "   fly me   to   the moon  " 4;
  check_solve "single word" "luffy is still joyboy" 6

let () =
  Alcotest.run "58: Length of Last Word"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
