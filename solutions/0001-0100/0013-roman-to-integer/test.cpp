#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 13", "[p0013]") {
    CHECK(leetcode::p0013::solve("III") == 3);
    CHECK(leetcode::p0013::solve("IV") == 4);
    CHECK(leetcode::p0013::solve("IX") == 9);
    CHECK(leetcode::p0013::solve("LVIII") == 58);
    CHECK(leetcode::p0013::solve("MCMXCIV") == 1994);
}
