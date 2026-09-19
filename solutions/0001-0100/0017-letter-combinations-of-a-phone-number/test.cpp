#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 17", "[p0017]") {
    CHECK(leetcode::p0017::solve("").empty());
    CHECK(leetcode::p0017::solve("2") == std::vector<std::string>{"a", "b", "c"});
    CHECK(leetcode::p0017::solve("23") ==
          std::vector<std::string>{"ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"});
}
