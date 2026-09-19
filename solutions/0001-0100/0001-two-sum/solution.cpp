#include "solution.hpp"

#include <iterator>
#include <unordered_map>

namespace leetcode::p0001 {

std::vector<int> solve(const std::vector<int>& nums, int target) {
    std::unordered_map<int, int> seenAt;

    for (int i = 0; i < std::ssize(nums); ++i) {
        auto complement = seenAt.find(target - nums[i]);
        if (complement != seenAt.end()) {
            return {complement->second, i};
        }
        seenAt[nums[i]] = i;
    }

    return {};
}

std::vector<int> solveBruteForce(const std::vector<int>& nums, int target) {
    for (int i = 0; i < std::ssize(nums); ++i) {
        for (int j = i + 1; j < std::ssize(nums); ++j) {
            if (nums[i] + nums[j] == target) {
                return {i, j};
            }
        }
    }

    return {};
}

} // namespace leetcode::p0001
