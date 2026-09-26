(** LeetCode 3110, Score of a String. *)

val solve : string -> int
(** [solve s] sums the absolute difference between the ASCII codes of every pair
    of adjacent characters in [s].

    Time: O(n). Space: O(1). *)
