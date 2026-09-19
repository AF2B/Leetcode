#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 136", "[p0136]") {
    CHECK(leetcode::p0136::solve({2, 2, 1}) == 1);
    CHECK(leetcode::p0136::solve({4, 1, 2, 1, 2}) == 4);
}
