#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 27", "[p0027]") {
    std::vector<int> a{3, 2, 2, 3};
    CHECK(leetcode::p0027::solve(a, 3) == 2);

    std::vector<int> b{0, 1, 2, 2, 3, 0, 4, 2};
    CHECK(leetcode::p0027::solve(b, 2) == 5);
}
