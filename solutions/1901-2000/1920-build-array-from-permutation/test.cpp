#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1920", "[p1920]") {
    CHECK(leetcode::p1920::solve({0, 2, 1, 5, 3, 4}) == std::vector<int>{0, 1, 2, 4, 5, 3});
    CHECK(leetcode::p1920::solve({5, 0, 1, 2, 3, 4}) == std::vector<int>{4, 5, 0, 1, 2, 3});
}
