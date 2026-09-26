(** LeetCode 83, Remove Duplicates from Sorted List.

    The list is represented as an OCaml [list], the natural shape for LeetCode's
    linked list. *)

val solve : int list -> int list
(** [solve sorted] removes consecutive duplicates from [sorted], keeping the
    first occurrence of each run.

    Time: O(n). Space: O(n) for the result.

    @param sorted a list already sorted in ascending order. *)
