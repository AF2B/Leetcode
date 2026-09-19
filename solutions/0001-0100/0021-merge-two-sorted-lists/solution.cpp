#include "solution.hpp"

namespace leetcode::p0021 {

ListNode* solve(ListNode* list1, ListNode* list2) {
    ListNode dummy;
    ListNode* current = &dummy;

    while (list1 != nullptr && list2 != nullptr) {
        if (list1->val <= list2->val) {
            current->next = list1;
            list1 = list1->next;
        } else {
            current->next = list2;
            list2 = list2->next;
        }
        current = current->next;
    }

    current->next = (list1 != nullptr) ? list1 : list2;

    return dummy.next;
}

} // namespace leetcode::p0021
