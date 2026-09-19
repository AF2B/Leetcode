#include <vector>

#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

namespace {

leetcode::p0002::ListNode* fromVector(const std::vector<int>& values) {
    leetcode::p0002::ListNode dummy;
    leetcode::p0002::ListNode* current = &dummy;
    for (int value : values) {
        current->next = new leetcode::p0002::ListNode(value);
        current = current->next;
    }
    return dummy.next;
}

std::vector<int> toVector(leetcode::p0002::ListNode* head) {
    std::vector<int> result;
    for (auto* node = head; node != nullptr; node = node->next) {
        result.push_back(node->val);
    }
    return result;
}

} // namespace

TEST_CASE("Problem 2", "[p0002]") {
    CHECK(toVector(leetcode::p0002::solve(fromVector({2, 4, 3}), fromVector({5, 6, 4}))) ==
          std::vector<int>{7, 0, 8});
    CHECK(toVector(leetcode::p0002::solve(fromVector({0}), fromVector({0}))) ==
          std::vector<int>{0});
    CHECK(toVector(leetcode::p0002::solve(fromVector({9, 9, 9, 9, 9, 9, 9}),
                                          fromVector({9, 9, 9, 9}))) ==
          std::vector<int>{8, 9, 9, 9, 0, 0, 0, 1});
}
