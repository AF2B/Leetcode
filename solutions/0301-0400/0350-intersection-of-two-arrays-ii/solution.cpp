#include "solution.hpp"

#include <unordered_map>

namespace leetcode::p0350 {

std::vector<int> solve(const std::vector<int>& nums1, const std::vector<int>& nums2) {
    std::unordered_map<int, int> counts;
    for (int value : nums1) {
        ++counts[value];
    }

    std::vector<int> result;
    for (int value : nums2) {
        auto it = counts.find(value);
        if (it != counts.end() && it->second > 0) {
            result.push_back(value);
            --it->second;
        }
    }

    return result;
}

} // namespace leetcode::p0350
