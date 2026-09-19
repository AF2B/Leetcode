#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 3110", "[p3110]") {
    CHECK(leetcode::p3110::solve("hello") == 13);
    CHECK(leetcode::p3110::solve("zaz") == 50);
}
