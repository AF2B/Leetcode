#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 709", "[p0709]") {
    CHECK(leetcode::p0709::solve("HELLO") == "hello");
    CHECK(leetcode::p0709::solve("world") == "world");
    CHECK(leetcode::p0709::solve("CloJure") == "clojure");
    CHECK(leetcode::p0709::solve("") == "");
    CHECK(leetcode::p0709::solve("123!@#") == "123!@#");
}
