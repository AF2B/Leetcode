let check_solve label s num_rows expected =
  Alcotest.(check string) label expected (Solution.solve s num_rows)

let test_examples () =
  check_solve "numRows = 3" "PAYPALISHIRING" 3 "PAHNAPLSIIGYIR";
  check_solve "numRows = 4" "PAYPALISHIRING" 4 "PINALSIGYAHRPI";
  check_solve "numRows = 1" "A" 1 "A"

let () =
  Alcotest.run "6: Zigzag Conversion"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
