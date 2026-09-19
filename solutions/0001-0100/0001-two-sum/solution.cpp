#include "solution.hpp"

#include <unordered_map>

namespace leetcode::p0001 {

std::vector<int> solve(const std::vector<int>& nums, int target) {
    std::unordered_map<int, int> seenAt;

    for (int i = 0; i < static_cast<int>(nums.size()); ++i) {
        auto complement = seenAt.find(target - nums[i]);
        if (complement != seenAt.end()) {
            return {complement->second, i};
        }
        seenAt[nums[i]] = i;
    }

    return {};
}

std::vector<int> solveBruteForce(const std::vector<int>& nums, int target) {
    for (int i = 0; i < static_cast<int>(nums.size()); ++i) {
        for (int j = i + 1; j < static_cast<int>(nums.size()); ++j) {
            if (nums[i] + nums[j] == target) {
                return {i, j};
            }
        }
    }

    return {};
}

} // namespace leetcode::p0001
