(** LeetCode 26, Remove Duplicates from Sorted Array. *)

val solve : int list -> int list
(** [solve sorted] removes consecutive duplicates from [sorted], keeping the
    first occurrence of each run. The length of the result is what LeetCode
    calls [k].

    Time: O(n). Space: O(n) for the result.

    @param sorted a list sorted in ascending order. *)
