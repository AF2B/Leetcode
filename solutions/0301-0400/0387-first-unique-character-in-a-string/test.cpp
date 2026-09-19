#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 387", "[p0387]") {
    CHECK(leetcode::p0387::solve("leetcode") == 0);
    CHECK(leetcode::p0387::solve("loveleetcode") == 2);
    CHECK(leetcode::p0387::solve("aabb") == -1);
}
