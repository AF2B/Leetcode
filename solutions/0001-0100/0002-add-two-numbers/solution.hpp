#pragma once

namespace leetcode::p0002 {

struct ListNode {
    int val;
    ListNode* next;

    explicit ListNode(int value = 0, ListNode* nextNode = nullptr) : val(value), next(nextNode) {}
};

// optimized: O(max(n, m)) time, O(max(n, m)) space — build the result list
// directly while walking both lists and carrying, in one pass.
ListNode* solve(ListNode* l1, ListNode* l2);

} // namespace leetcode::p0002
