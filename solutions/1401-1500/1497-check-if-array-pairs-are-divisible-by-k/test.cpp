#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1497", "[p1497]") {
    CHECK(leetcode::p1497::solve({1, 2, 3, 4, 5, 10, 6, 7, 8, 9}, 5));
    CHECK(leetcode::p1497::solve({1, 2, 3, 4, 5, 6}, 7));
    CHECK_FALSE(leetcode::p1497::solve({1, 2, 3, 4, 5, 6}, 10));
    CHECK(leetcode::p1497::solve({-1, 1, -2, 2, -3, 3, -4, 4}, 3));
}
