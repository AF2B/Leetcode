#include <any>
#include <string>

#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 2703", "[p2703]") {
    CHECK(leetcode::p2703::solve({std::any{}, std::string("hello"), 2}) == 3);
    CHECK(leetcode::p2703::solve({}) == 0);
    CHECK(leetcode::p2703::solve({1, 2, 3, std::any{}, 5}) == 5);
}
