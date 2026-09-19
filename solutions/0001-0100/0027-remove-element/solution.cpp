#include "solution.hpp"

namespace leetcode::p0027 {

int solve(std::vector<int>& nums, int val) {
    int k = 0;

    for (int num : nums) {
        if (num != val) {
            nums.at(static_cast<std::size_t>(k)) = num;
            ++k;
        }
    }

    return k;
}

} // namespace leetcode::p0027
