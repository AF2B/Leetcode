#pragma once

namespace leetcode::p0021 {

struct ListNode {
    int val;
    ListNode* next;

    explicit ListNode(int value = 0, ListNode* nextNode = nullptr) : val(value), next(nextNode) {}
};

// optimized: O(n + m) time, O(1) extra space — splice nodes onto a dummy
// head, iteratively.
ListNode* solve(ListNode* list1, ListNode* list2);

} // namespace leetcode::p0021
