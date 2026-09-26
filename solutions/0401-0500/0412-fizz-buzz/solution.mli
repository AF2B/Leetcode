(** LeetCode 412, Fizz Buzz. *)

(** The input fell outside LeetCode's stated bounds, [1, 10_000]. *)
type error = Out_of_range of int

val solve : int -> (string list, error) result
(** [solve n] returns, for each integer in [1, n], ["FizzBuzz"] when divisible
    by 15, ["Fizz"] when divisible by 3, ["Buzz"] when divisible by 5, or the
    number itself as a string otherwise.

    Time: O(n). Space: O(n) for the result list.

    @param n the upper bound of the range, inclusive.
    @return
      [Ok result] when [n] is within LeetCode's bounds, or
      [Error (Out_of_range n)] otherwise. *)
