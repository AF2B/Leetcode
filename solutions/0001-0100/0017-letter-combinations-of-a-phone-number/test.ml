let sorted_string_list =
  Alcotest.testable
    (fun fmt l -> Alcotest.pp Alcotest.(list string) fmt (List.sort compare l))
    (fun a b -> List.sort compare a = List.sort compare b)

let check_solve label input expected =
  Alcotest.(check sorted_string_list) label expected (Solution.solve input)

let test_examples () =
  check_solve "empty" "" [];
  check_solve "23" "23" [ "ad"; "ae"; "af"; "bd"; "be"; "bf"; "cd"; "ce"; "cf" ];
  check_solve "2" "2" [ "a"; "b"; "c" ]

let () =
  Alcotest.run "17: Letter Combinations of a Phone Number"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
