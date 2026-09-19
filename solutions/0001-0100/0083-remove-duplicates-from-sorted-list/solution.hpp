#pragma once

namespace leetcode::p0083 {

struct ListNode {
    int val;
    ListNode* next;

    explicit ListNode(int value = 0, ListNode* nextNode = nullptr) : val(value), next(nextNode) {}
};

// optimized: O(n) time, O(1) extra space — walk the list once, skipping any
// node whose value matches the current one.
ListNode* solve(ListNode* head);

} // namespace leetcode::p0083
