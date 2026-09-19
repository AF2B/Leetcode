#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 242 - optimized", "[p0242]") {
    CHECK(leetcode::p0242::solve("anagram", "nagaram"));
    CHECK_FALSE(leetcode::p0242::solve("rat", "car"));
}

TEST_CASE("Problem 242 - hash map", "[p0242]") {
    CHECK(leetcode::p0242::solveHashMap("anagram", "nagaram"));
    CHECK_FALSE(leetcode::p0242::solveHashMap("rat", "car"));
}
