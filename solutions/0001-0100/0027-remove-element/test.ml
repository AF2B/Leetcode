let int_list = Alcotest.(list int)

let check_solve label nums value expected =
  Alcotest.(check int_list) label expected (Solution.solve nums value)

let test_examples () =
  check_solve "3,2,2,3 remove 3" [ 3; 2; 2; 3 ] 3 [ 2; 2 ];
  check_solve "0,1,2,2,3,0,4,2 remove 2" [ 0; 1; 2; 2; 3; 0; 4; 2 ] 2
    [ 0; 1; 3; 0; 4 ]

let () =
  Alcotest.run "27: Remove Element"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
