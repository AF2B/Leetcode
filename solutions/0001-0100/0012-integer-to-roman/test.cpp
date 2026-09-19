#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 12", "[p0012]") {
    CHECK(leetcode::p0012::solve(1) == "I");
    CHECK(leetcode::p0012::solve(4) == "IV");
    CHECK(leetcode::p0012::solve(9) == "IX");
    CHECK(leetcode::p0012::solve(58) == "LVIII");
    CHECK(leetcode::p0012::solve(1994) == "MCMXCIV");
    CHECK(leetcode::p0012::solve(3999) == "MMMCMXCIX");
}
