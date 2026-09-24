#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1 - optimized", "[p0001]") {
    CHECK(leetcode::p0001::solve({2, 7, 11, 15}, 9) == std::vector<int>{0, 1});
    CHECK(leetcode::p0001::solve({3, 2, 4}, 6) == std::vector<int>{1, 2});
    CHECK(leetcode::p0001::solve({3, 3}, 6) == std::vector<int>{0, 1});
    CHECK(leetcode::p0001::solve({1, 2, 3}, 4) == std::vector<int>{0, 2});
}

TEST_CASE("Problem 1 - brute force", "[p0001]") {
    CHECK(leetcode::p0001::solveBruteForce({2, 7, 11, 15}, 9) == std::vector<int>{0, 1});
    CHECK(leetcode::p0001::solveBruteForce({3, 2, 4}, 6) == std::vector<int>{1, 2});
    CHECK(leetcode::p0001::solveBruteForce({3, 3}, 6) == std::vector<int>{0, 1});
    CHECK(leetcode::p0001::solveBruteForce({1, 2, 3}, 4) == std::vector<int>{0, 2});
}
