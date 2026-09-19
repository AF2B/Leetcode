#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 1768", "[p1768]") {
    CHECK(leetcode::p1768::solve("abc", "pqr") == "apbqcr");
    CHECK(leetcode::p1768::solve("ab", "pqrs") == "apbqrs");
    CHECK(leetcode::p1768::solve("abcd", "pq") == "apbqcd");
    CHECK(leetcode::p1768::solve("", "") == "");
    CHECK(leetcode::p1768::solve("abc", "") == "abc");
}
