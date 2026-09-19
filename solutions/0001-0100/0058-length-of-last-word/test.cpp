#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 58", "[p0058]") {
    CHECK(leetcode::p0058::solve("Hello World") == 5);
    CHECK(leetcode::p0058::solve("   fly me   to   the moon  ") == 4);
    CHECK(leetcode::p0058::solve("luffy is still joyboy") == 6);
}
