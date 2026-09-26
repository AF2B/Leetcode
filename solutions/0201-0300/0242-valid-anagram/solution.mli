(** LeetCode 242, Valid Anagram. *)

val solve : string -> string -> bool
(** [solve s t] returns [true] iff [t] is an anagram of [s].

    Time: O(|s| + |t|). Space: O(1) (at most 26 lowercase letters). *)
