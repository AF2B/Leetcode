#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 6", "[p0006]") {
    CHECK(leetcode::p0006::solve("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR");
    CHECK(leetcode::p0006::solve("PAYPALISHIRING", 4) == "PINALSIGYAHRPI");
    CHECK(leetcode::p0006::solve("A", 1) == "A");
}
