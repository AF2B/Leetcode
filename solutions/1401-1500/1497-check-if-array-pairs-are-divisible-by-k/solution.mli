(** LeetCode 1497, Check If Array Pairs Are Divisible by K.

    Two values can be paired iff their remainders mod [k] add up to [k] (or are
    both 0). This holds regardless of how [arr] is ordered, so the algorithm
    counts how many elements fall in each remainder class and checks that class
    [r] and class [k - r] have equal counts. *)

val solve : int list -> int -> bool
(** [solve arr k] returns [true] iff [arr] can be split into pairs whose sum is
    divisible by [k].

    Time: O(n). Space: O(k) for the remainder counts.

    @param arr a list of even length. *)
