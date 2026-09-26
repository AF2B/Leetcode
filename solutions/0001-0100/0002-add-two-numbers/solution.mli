(** LeetCode 2, Add Two Numbers.

    A number is represented as its digits in a list, least significant digit
    first — the natural OCaml [list] shape for LeetCode's reversed linked list.
*)

val solve : int list -> int list -> int list
(** [solve l1 l2] adds the two numbers represented by [l1] and [l2] and returns
    the sum in the same least-significant-digit-first shape.

    Time: O(max(|l1|, |l2|)). Space: O(max(|l1|, |l2|)) for the result. *)
