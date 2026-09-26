let error_testable =
  let pp fmt (Solution.Out_of_range n) =
    Format.fprintf fmt "Out_of_range %d" n
  in
  Alcotest.testable pp ( = )

let solve_result = Alcotest.(result (list string) error_testable)

let check_solve label n expected =
  Alcotest.(check solve_result) label expected (Solution.solve n)

let test_examples () =
  check_solve "n = 1" 1 (Ok [ "1" ]);
  check_solve "n = 3" 3 (Ok [ "1"; "2"; "Fizz" ]);
  check_solve "n = 5" 5 (Ok [ "1"; "2"; "Fizz"; "4"; "Buzz" ]);
  check_solve "n = 15" 15
    (Ok
       [
         "1";
         "2";
         "Fizz";
         "4";
         "Buzz";
         "Fizz";
         "7";
         "8";
         "Fizz";
         "Buzz";
         "11";
         "Fizz";
         "13";
         "14";
         "FizzBuzz";
       ])

let test_out_of_range () =
  check_solve "n = 0" 0 (Error (Solution.Out_of_range 0));
  check_solve "n = -1" (-1) (Error (Solution.Out_of_range (-1)));
  check_solve "n = 10_001" 10_001 (Error (Solution.Out_of_range 10_001))

let () =
  Alcotest.run "412: Fizz Buzz"
    [
      ( "solve",
        [
          Alcotest.test_case "examples" `Quick test_examples;
          Alcotest.test_case "out of range" `Quick test_out_of_range;
        ] );
    ]
