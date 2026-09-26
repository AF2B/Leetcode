(** LeetCode 136, Single Number. *)

val solve : int list -> int
(** [solve nums] returns the element that appears once, given every other
    element appears exactly twice — the XOR of all elements, since a value XORed
    with itself cancels to zero.

    Time: O(n). Space: O(1).

    @param nums a non-empty list where every value but one appears twice. *)
