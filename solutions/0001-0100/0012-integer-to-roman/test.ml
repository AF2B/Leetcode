let error_testable =
  let pp fmt (Solution.Out_of_range n) =
    Format.fprintf fmt "Out_of_range %d" n
  in
  Alcotest.testable pp ( = )

let solve_result = Alcotest.(result string error_testable)

let check_solve label num expected =
  Alcotest.(check solve_result) label expected (Solution.solve num)

let test_examples () =
  check_solve "1" 1 (Ok "I");
  check_solve "4" 4 (Ok "IV");
  check_solve "9" 9 (Ok "IX");
  check_solve "58" 58 (Ok "LVIII");
  check_solve "1994" 1994 (Ok "MCMXCIV");
  check_solve "3999" 3999 (Ok "MMMCMXCIX")

let test_out_of_range () =
  check_solve "0" 0 (Error (Solution.Out_of_range 0));
  check_solve "4000" 4000 (Error (Solution.Out_of_range 4000))

let () =
  Alcotest.run "12: Integer to Roman"
    [
      ( "solve",
        [
          Alcotest.test_case "examples" `Quick test_examples;
          Alcotest.test_case "out of range" `Quick test_out_of_range;
        ] );
    ]
