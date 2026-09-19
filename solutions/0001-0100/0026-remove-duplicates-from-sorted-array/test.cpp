#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 26", "[p0026]") {
    std::vector<int> a{1, 1, 2};
    CHECK(leetcode::p0026::solve(a) == 2);

    std::vector<int> b{0, 0, 1, 1, 1, 2, 2, 3, 3, 4};
    CHECK(leetcode::p0026::solve(b) == 5);
}
