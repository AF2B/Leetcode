#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1550", "[p1550]") {
    CHECK_FALSE(leetcode::p1550::solve({2, 6, 4, 1}));
    CHECK(leetcode::p1550::solve({1, 2, 34, 3, 4, 5, 7, 23, 12}));
}
