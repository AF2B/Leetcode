let check_solve label input expected =
  Alcotest.(check int) label expected (Solution.solve input)

let test_examples () =
  check_solve "1,2,3,1,1,3" [ 1; 2; 3; 1; 1; 3 ] 4;
  check_solve "1,1,1,1" [ 1; 1; 1; 1 ] 6;
  check_solve "1,2,3" [ 1; 2; 3 ] 0

let () =
  Alcotest.run "1512: Number of Good Pairs"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
