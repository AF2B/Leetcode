(** LeetCode 21, Merge Two Sorted Lists. *)

val solve : int list -> int list -> int list
(** [solve l1 l2] merges two ascending-sorted lists into one ascending-sorted
    list.

    Time: O(|l1| + |l2|). Space: O(|l1| + |l2|) for the result.

    @param l1 a list sorted in ascending order.
    @param l2 a list sorted in ascending order. *)
