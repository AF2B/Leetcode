let sorted_int_list =
  Alcotest.testable
    (fun fmt l -> Alcotest.pp Alcotest.(list int) fmt (List.sort compare l))
    (fun a b -> List.sort compare a = List.sort compare b)

let check_solve label nums1 nums2 expected =
  Alcotest.(check sorted_int_list) label expected (Solution.solve nums1 nums2)

let test_examples () =
  check_solve "1,2,2,1 / 2,2" [ 1; 2; 2; 1 ] [ 2; 2 ] [ 2; 2 ];
  check_solve "4,9,5 / 9,4,9,8,4" [ 4; 9; 5 ] [ 9; 4; 9; 8; 4 ] [ 4; 9 ]

let () =
  Alcotest.run "350: Intersection of Two Arrays II"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
