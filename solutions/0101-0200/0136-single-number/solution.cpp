#include "solution.hpp"

namespace leetcode::p0136 {

int solve(const std::vector<int>& nums) {
    unsigned result = 0;
    for (int num : nums) {
        result ^= static_cast<unsigned>(num);
    }
    return static_cast<int>(result);
}

} // namespace leetcode::p0136
