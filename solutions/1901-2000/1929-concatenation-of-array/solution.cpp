#include "solution.hpp"

namespace leetcode::p1929 {

std::vector<int> solve(const std::vector<int>& nums) {
    std::vector<int> result;
    result.reserve(nums.size() * 2);
    result.insert(result.end(), nums.begin(), nums.end());
    result.insert(result.end(), nums.begin(), nums.end());
    return result;
}

} // namespace leetcode::p1929
