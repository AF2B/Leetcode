(** LeetCode 387, First Unique Character in a String. *)

val solve : string -> int
(** [solve s] returns the index of the first character in [s] that appears
    exactly once, or [-1] if none does.

    Time: O(n). Space: O(1) (at most 26 lowercase letters). *)
