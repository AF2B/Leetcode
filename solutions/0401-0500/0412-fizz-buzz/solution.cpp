#include "solution.hpp"

namespace leetcode::p0412 {

std::vector<std::string> solve(int n) {
    std::vector<std::string> result;
    result.reserve(static_cast<std::size_t>(n));

    for (int i = 1; i <= n; ++i) {
        if (i % 15 == 0) {
            result.emplace_back("FizzBuzz");
        } else if (i % 3 == 0) {
            result.emplace_back("Fizz");
        } else if (i % 5 == 0) {
            result.emplace_back("Buzz");
        } else {
            result.push_back(std::to_string(i));
        }
    }

    return result;
}

} // namespace leetcode::p0412
