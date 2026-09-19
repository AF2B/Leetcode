#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1512 - optimized", "[p1512]") {
    CHECK(leetcode::p1512::solve({1, 2, 3, 1, 1, 3}) == 4);
    CHECK(leetcode::p1512::solve({1, 1, 1, 1}) == 6);
    CHECK(leetcode::p1512::solve({1, 2, 3}) == 0);
}

TEST_CASE("Problem 1512 - brute force", "[p1512]") {
    CHECK(leetcode::p1512::solveBruteForce({1, 2, 3, 1, 1, 3}) == 4);
    CHECK(leetcode::p1512::solveBruteForce({1, 1, 1, 1}) == 6);
    CHECK(leetcode::p1512::solveBruteForce({1, 2, 3}) == 0);
}
