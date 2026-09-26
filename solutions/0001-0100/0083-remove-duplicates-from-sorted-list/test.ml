let int_list = Alcotest.(list int)

let check_solve label input expected =
  Alcotest.(check int_list) label expected (Solution.solve input)

let test_examples () =
  check_solve "empty" [] [];
  check_solve "no duplicates" [ 1; 2; 3 ] [ 1; 2; 3 ];
  check_solve "1,1,2" [ 1; 1; 2 ] [ 1; 2 ];
  check_solve "1,1,2,3,3" [ 1; 1; 2; 3; 3 ] [ 1; 2; 3 ]

let () =
  Alcotest.run "83: Remove Duplicates from Sorted List"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
