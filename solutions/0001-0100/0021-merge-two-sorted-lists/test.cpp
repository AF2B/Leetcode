#include <vector>

#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

namespace {

leetcode::p0021::ListNode* fromVector(const std::vector<int>& values) {
    leetcode::p0021::ListNode dummy;
    leetcode::p0021::ListNode* current = &dummy;
    for (int value : values) {
        current->next = new leetcode::p0021::ListNode(value);
        current = current->next;
    }
    return dummy.next;
}

std::vector<int> toVector(leetcode::p0021::ListNode* head) {
    std::vector<int> result;
    for (auto* node = head; node != nullptr; node = node->next) {
        result.push_back(node->val);
    }
    return result;
}

} // namespace

TEST_CASE("Problem 21", "[p0021]") {
    CHECK(toVector(leetcode::p0021::solve(fromVector({1, 2, 4}), fromVector({1, 3, 4}))) ==
          std::vector<int>{1, 1, 2, 3, 4, 4});
    CHECK(toVector(leetcode::p0021::solve(fromVector({}), fromVector({}))).empty());
    CHECK(toVector(leetcode::p0021::solve(fromVector({}), fromVector({0}))) == std::vector<int>{0});
}
