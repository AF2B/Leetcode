let check_solve label input expected =
  Alcotest.(check bool) label expected (Solution.solve input)

let test_examples () =
  check_solve "2,6,4,1" [ 2; 6; 4; 1 ] false;
  check_solve "1,2,34,3,4,5,7,23,12" [ 1; 2; 34; 3; 4; 5; 7; 23; 12 ] true

let () =
  Alcotest.run "1550: Three Consecutive Odds"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
