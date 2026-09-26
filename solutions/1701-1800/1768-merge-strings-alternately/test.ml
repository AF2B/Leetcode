let check_solve label word1 word2 expected =
  Alcotest.(check string) label expected (Solution.solve word1 word2)

let test_examples () =
  check_solve "abc/pqr" "abc" "pqr" "apbqcr";
  check_solve "ab/pqrs" "ab" "pqrs" "apbqrs";
  check_solve "abcd/pq" "abcd" "pq" "apbqcd"

let () =
  Alcotest.run "1768: Merge Strings Alternately"
    [ ("solve", [ Alcotest.test_case "examples" `Quick test_examples ]) ]
