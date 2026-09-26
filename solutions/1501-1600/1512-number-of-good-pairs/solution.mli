(** LeetCode 1512, Number of Good Pairs. *)

val solve : int list -> int
(** [solve nums] counts the pairs [(i, j)] with [i < j] and
    [nums.(i) = nums.(j)], via a running count of how many times each value has
    already been seen (a value seen [k] times before contributes [k] new good
    pairs).

    Time: O(n). Space: O(n) for the count table. *)
