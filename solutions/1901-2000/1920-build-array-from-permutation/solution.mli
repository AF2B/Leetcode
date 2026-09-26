(** LeetCode 1920, Build Array from Permutation.

    Uses [array] rather than [list]: the algorithm needs O(1) random access into
    [nums], which a list can't offer. *)

val solve : int array -> int array
(** [solve nums] returns [ans] where [ans.(i) = nums.(nums.(i))].

    Time: O(n). Space: O(n) for the result.

    @param nums a permutation of [0 .. Array.length nums - 1]. *)
