#include <vector>

#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

namespace {

leetcode::p0083::ListNode* fromVector(const std::vector<int>& values) {
    leetcode::p0083::ListNode dummy;
    leetcode::p0083::ListNode* current = &dummy;
    for (int value : values) {
        current->next = new leetcode::p0083::ListNode(value);
        current = current->next;
    }
    return dummy.next;
}

std::vector<int> toVector(leetcode::p0083::ListNode* head) {
    std::vector<int> result;
    for (auto* node = head; node != nullptr; node = node->next) {
        result.push_back(node->val);
    }
    return result;
}

} // namespace

TEST_CASE("Problem 83", "[p0083]") {
    CHECK(toVector(leetcode::p0083::solve(fromVector({1, 1, 2}))) == std::vector<int>{1, 2});
    CHECK(toVector(leetcode::p0083::solve(fromVector({1, 1, 2, 3, 3}))) ==
          std::vector<int>{1, 2, 3});
    CHECK(toVector(leetcode::p0083::solve(fromVector({}))).empty());
}
