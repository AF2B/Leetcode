#include "solution.hpp"

namespace leetcode::p1497 {

bool solve(const std::vector<int>& arr, int k) {
    std::vector<int> remainderCounts(static_cast<std::size_t>(k), 0);

    for (int value : arr) {
        int remainder = ((value % k) + k) % k;
        ++remainderCounts[static_cast<std::size_t>(remainder)];
    }

    if (remainderCounts[0] % 2 != 0) {
        return false;
    }

    for (int remainder = 1; remainder <= k / 2; ++remainder) {
        if (remainderCounts[static_cast<std::size_t>(remainder)] !=
            remainderCounts[static_cast<std::size_t>(k - remainder)]) {
            return false;
        }
    }

    return true;
}

} // namespace leetcode::p1497
