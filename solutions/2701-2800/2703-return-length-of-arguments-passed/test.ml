let test_examples () =
  Alcotest.(check int)
    "null, hello, 2" 3
    (Solution.solve [ None; Some "hello"; Some "2" ]);
  Alcotest.(check int) "empty" 0 (Solution.solve []);
  Alcotest.(check int)
    "1,2,3,null,5" 5
    (Solution.solve [ Some 1; Some 2; Some 3; None; Some 5 ])

let () =
  Alcotest.run "2703: Return Length of Arguments Passed"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
