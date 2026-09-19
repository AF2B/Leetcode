#include "solution.hpp"

namespace leetcode::p0026 {

int solve(std::vector<int>& nums) {
    if (nums.empty()) {
        return 0;
    }

    std::size_t i = 0;
    for (std::size_t j = 1; j < nums.size(); ++j) {
        if (nums[j] != nums[i]) {
            ++i;
            nums[i] = nums[j];
        }
    }

    return static_cast<int>(i) + 1;
}

} // namespace leetcode::p0026
