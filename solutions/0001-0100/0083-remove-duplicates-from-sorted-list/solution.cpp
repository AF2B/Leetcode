#include "solution.hpp"

namespace leetcode::p0083 {

ListNode* solve(ListNode* head) {
    ListNode* current = head;

    while (current != nullptr && current->next != nullptr) {
        if (current->next->val == current->val) {
            current->next = current->next->next;
        } else {
            current = current->next;
        }
    }

    return head;
}

} // namespace leetcode::p0083
