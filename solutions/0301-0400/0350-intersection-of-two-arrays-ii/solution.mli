(** LeetCode 350, Intersection of Two Arrays II. *)

val solve : int list -> int list -> int list
(** [solve nums1 nums2] returns their multiset intersection: each value appears
    as many times as it shows in both inputs. The order of the result is
    unspecified.

    Time: O(|nums1| + |nums2|). Space: O(|nums1|) for the count table. *)
