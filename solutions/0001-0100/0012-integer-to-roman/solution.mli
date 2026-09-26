(** LeetCode 12, Integer to Roman. *)

(** The input fell outside LeetCode's stated bounds, [1, 3999]. *)
type error = Out_of_range of int

val solve : int -> (string, error) result
(** [solve num] converts [num] to its Roman numeral representation by greedily
    subtracting the largest symbol value that still fits.

    Time: O(1) (at most 13 symbols, a fixed bound). Space: O(1).

    @return
      [Ok roman] when [num] is within LeetCode's bounds, or
      [Error (Out_of_range num)] otherwise. *)
