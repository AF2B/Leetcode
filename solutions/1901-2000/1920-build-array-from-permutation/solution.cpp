#include "solution.hpp"

#include <iterator>

namespace leetcode::p1920 {

std::vector<int> solve(const std::vector<int>& nums) {
    std::vector<int> result;
    result.reserve(nums.size());

    for (int i = 0; i < std::ssize(nums); ++i) {
        result.push_back(nums.at(static_cast<std::size_t>(nums.at(static_cast<std::size_t>(i)))));
    }

    return result;
}

} // namespace leetcode::p1920
