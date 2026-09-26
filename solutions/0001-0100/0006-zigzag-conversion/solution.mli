(** LeetCode 6, Zigzag Conversion. *)

val solve : string -> int -> string
(** [solve s num_rows] arranges [s] in a zigzag over [num_rows] rows and reads
    it back row by row.

    Time: O(n). Space: O(n) for the row buffers.

    @param num_rows the number of rows, at least 1. *)
