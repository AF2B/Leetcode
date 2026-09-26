(** LeetCode 1108, Defanging an IP Address. *)

val solve : string -> string
(** [solve address] replaces every ["."] in [address] with ["[.]"].

    Time: O(n). Space: O(n) for the result. *)
