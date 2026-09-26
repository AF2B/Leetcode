let check_solve label input expected =
  Alcotest.(check int) label expected (Solution.solve input)

let test_examples () =
  check_solve "2,2,1" [ 2; 2; 1 ] 1;
  check_solve "4,1,2,1,2" [ 4; 1; 2; 1; 2 ] 4;
  check_solve "1" [ 1 ] 1

let () =
  Alcotest.run "136: Single Number"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
