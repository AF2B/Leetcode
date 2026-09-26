let int_list = Alcotest.(list int)

let check_solve label l1 l2 expected =
  Alcotest.(check int_list) label expected (Solution.solve l1 l2)

let test_examples () =
  check_solve "342 + 465" [ 2; 4; 3 ] [ 5; 6; 4 ] [ 7; 0; 8 ];
  check_solve "0 + 0" [ 0 ] [ 0 ] [ 0 ];
  check_solve "9999999 + 9999" [ 9; 9; 9; 9; 9; 9; 9 ] [ 9; 9; 9; 9 ]
    [ 8; 9; 9; 9; 0; 0; 0; 1 ]

let () =
  Alcotest.run "2: Add Two Numbers"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
