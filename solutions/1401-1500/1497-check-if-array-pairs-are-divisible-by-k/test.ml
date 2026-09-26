let check_solve label arr k expected =
  Alcotest.(check bool) label expected (Solution.solve arr k)

let test_examples () =
  check_solve "canonical true, k=5" [ 1; 2; 3; 4; 5; 10; 6; 7; 8; 9 ] 5 true;
  check_solve "canonical true, k=7" [ 1; 2; 3; 4; 5; 6 ] 7 true;
  check_solve "canonical false, k=10" [ 1; 2; 3; 4; 5; 6 ] 10 false;
  check_solve "negative numbers, k=3" [ -1; 1; -2; 2; -3; 3; -4; 4 ] 3 true

let test_needs_remainder_pairing_not_index_pairing () =
  (* Pairing by remainder class (2+1=3, 2+1=3) succeeds even though the
     naive index-symmetric pairing (arr.(0)+arr.(3), arr.(1)+arr.(2)) would
     wrongly reject it: 1+1 = 2 is not divisible by 3. *)
  check_solve "remainder pairing beats index pairing" [ 1; 2; 2; 1 ] 3 true

let () =
  Alcotest.run "1497: Check If Array Pairs Are Divisible by K"
    [
      ( "solve",
        [
          Alcotest.test_case "examples" `Quick test_examples;
          Alcotest.test_case "remainder pairing" `Quick
            test_needs_remainder_pairing_not_index_pairing;
        ] );
    ]
