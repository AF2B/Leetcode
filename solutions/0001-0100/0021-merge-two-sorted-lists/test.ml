let int_list = Alcotest.(list int)

let check_solve label l1 l2 expected =
  Alcotest.(check int_list) label expected (Solution.solve l1 l2)

let test_examples () =
  check_solve "1,2,4 / 1,3,4" [ 1; 2; 4 ] [ 1; 3; 4 ] [ 1; 1; 2; 3; 4; 4 ];
  check_solve "empty / empty" [] [] [];
  check_solve "empty / 0" [] [ 0 ] [ 0 ]

let () =
  Alcotest.run "21: Merge Two Sorted Lists"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
