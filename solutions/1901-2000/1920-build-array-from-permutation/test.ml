let int_array = Alcotest.(array int)

let check_solve label input expected =
  Alcotest.(check int_array) label expected (Solution.solve input)

let test_examples () =
  check_solve "0,2,1,5,3,4" [| 0; 2; 1; 5; 3; 4 |] [| 0; 1; 2; 4; 5; 3 |];
  check_solve "5,0,1,2,3,4" [| 5; 0; 1; 2; 3; 4 |] [| 4; 5; 0; 1; 2; 3 |]

let () =
  Alcotest.run "1920: Build Array from Permutation"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
