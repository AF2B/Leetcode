(** LeetCode 1768, Merge Strings Alternately. *)

val solve : string -> string -> string
(** [solve word1 word2] merges the two strings by alternating characters,
    starting with [word1], then appending whichever string still has characters
    left.

    Time: O(|word1| + |word2|). Space: O(|word1| + |word2|) for the result. *)
