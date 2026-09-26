(** LeetCode 17, Letter Combinations of a Phone Number. *)

val solve : string -> string list
(** [solve digits] returns every letter combination [digits] could represent on
    a standard telephone keypad, in unspecified order.

    Time: O(4^n) for the worst case (digits mapping to four letters). Space:
    O(4^n) for the result.

    @param digits a string of digits in ['2', '9']. *)
