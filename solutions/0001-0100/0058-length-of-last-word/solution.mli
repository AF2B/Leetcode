(** LeetCode 58, Length of Last Word. *)

val solve : string -> int
(** [solve s] returns the length of the last word in [s], where a word is a
    maximal run of non-space characters.

    Time: O(n). Space: O(1).

    @param s a string guaranteed to contain at least one word. *)
