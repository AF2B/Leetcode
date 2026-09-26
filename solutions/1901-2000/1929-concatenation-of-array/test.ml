let int_list = Alcotest.(list int)

let check_solve label input expected =
  Alcotest.(check int_list) label expected (Solution.solve input)

let test_examples () =
  check_solve "1,2,1" [ 1; 2; 1 ] [ 1; 2; 1; 1; 2; 1 ];
  check_solve "1,3,2,1" [ 1; 3; 2; 1 ] [ 1; 3; 2; 1; 1; 3; 2; 1 ]

let () =
  Alcotest.run "1929: Concatenation of Array"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
