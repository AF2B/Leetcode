#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1929", "[p1929]") {
    CHECK(leetcode::p1929::solve({1, 2, 1}) == std::vector<int>{1, 2, 1, 1, 2, 1});
    CHECK(leetcode::p1929::solve({1, 3, 2, 1}) == std::vector<int>{1, 3, 2, 1, 1, 3, 2, 1});
}
