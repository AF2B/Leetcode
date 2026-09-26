(** LeetCode 27, Remove Element. *)

val solve : int list -> int -> int list
(** [solve nums value] returns the elements of [nums] that are not equal to
    [value], preserving their relative order. The length of the result is what
    LeetCode calls [k].

    Time: O(n). Space: O(n) for the result. *)
