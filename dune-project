(lang dune 3.0)

(generate_opam_files true)

(package
 (name leetcode)
 (synopsis "LeetCode solutions in OCaml")
 (allow_empty)
 (depends
  (ocaml
   (>= 5.0))
  (alcotest
   (and
    :with-test
    (>= 1.7.0)))))
