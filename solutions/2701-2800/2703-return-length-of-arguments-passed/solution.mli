(** LeetCode 2703, Return Length of Arguments Passed.

    Stands in for JavaScript's variadic [arguments] object with a polymorphic
    list — a single collection of values of one type, whose length is the
    answer. *)

val solve : 'a list -> int
(** [solve args] returns the number of elements in [args].

    Time: O(n). Space: O(1). *)
