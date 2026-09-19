#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 350", "[p0350]") {
    CHECK(leetcode::p0350::solve({1, 2, 2, 1}, {2, 2}) == std::vector<int>{2, 2});
    CHECK(leetcode::p0350::solve({4, 9, 5}, {9, 4, 9, 8, 4}) == std::vector<int>{9, 4});
}
