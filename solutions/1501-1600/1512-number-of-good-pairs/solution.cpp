#include "solution.hpp"

#include <unordered_map>

namespace leetcode::p1512 {

int solve(const std::vector<int>& nums) {
    std::unordered_map<int, int> counts;
    int result = 0;

    for (int value : nums) {
        auto& count = counts[value];
        result += count;
        ++count;
    }

    return result;
}

int solveBruteForce(const std::vector<int>& nums) {
    int result = 0;

    for (std::size_t i = 0; i < nums.size(); ++i) {
        for (std::size_t j = i + 1; j < nums.size(); ++j) {
            if (nums[i] == nums[j]) {
                ++result;
            }
        }
    }

    return result;
}

} // namespace leetcode::p1512
