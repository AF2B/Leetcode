#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem 412", "[p0412]") {
    CHECK(leetcode::p0412::solve(1) == std::vector<std::string>{"1"});
    CHECK(leetcode::p0412::solve(3) == std::vector<std::string>{"1", "2", "Fizz"});
    CHECK(leetcode::p0412::solve(5) == std::vector<std::string>{"1", "2", "Fizz", "4", "Buzz"});
    CHECK(leetcode::p0412::solve(15) == std::vector<std::string>{
                                            "1",
                                            "2",
                                            "Fizz",
                                            "4",
                                            "Buzz",
                                            "Fizz",
                                            "7",
                                            "8",
                                            "Fizz",
                                            "Buzz",
                                            "11",
                                            "Fizz",
                                            "13",
                                            "14",
                                            "FizzBuzz",
                                        });
}
