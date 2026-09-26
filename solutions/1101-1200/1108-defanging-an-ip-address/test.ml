let check_solve label input expected =
  Alcotest.(check string) label expected (Solution.solve input)

let test_examples () =
  check_solve "1.1.1.1" "1.1.1.1" "1[.]1[.]1[.]1";
  check_solve "255.100.50.0" "255.100.50.0" "255[.]100[.]50[.]0"

let () =
  Alcotest.run "1108: Defanging an IP Address"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
