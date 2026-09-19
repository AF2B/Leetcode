#include "solution.hpp"

namespace leetcode::p1550 {

bool solve(const std::vector<int>& arr) {
    int consecutiveOdds = 0;

    for (int value : arr) {
        if (value % 2 != 0) {
            ++consecutiveOdds;
            if (consecutiveOdds == 3) {
                return true;
            }
        } else {
            consecutiveOdds = 0;
        }
    }

    return false;
}

} // namespace leetcode::p1550
