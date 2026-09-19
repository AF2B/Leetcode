#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1108", "[p1108]") {
    CHECK(leetcode::p1108::solve("1.1.1.1") == "1[.]1[.]1[.]1");
    CHECK(leetcode::p1108::solve("255.100.50.0") == "255[.]100[.]50[.]0");
}
