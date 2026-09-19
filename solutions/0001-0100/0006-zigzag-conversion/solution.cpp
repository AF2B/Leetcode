#include "solution.hpp"

#include <iterator>
#include <vector>

namespace leetcode::p0006 {

std::string solve(const std::string& s, int numRows) {
    if (numRows == 1 || numRows >= std::ssize(s)) {
        return s;
    }

    std::vector<std::string> rows(static_cast<std::size_t>(numRows));
    int row = 0;
    int direction = -1;

    for (char c : s) {
        rows[static_cast<std::size_t>(row)] += c;
        if (row == 0 || row == numRows - 1) {
            direction = -direction;
        }
        row += direction;
    }

    std::string result;
    result.reserve(s.size());
    for (const auto& r : rows) {
        result += r;
    }

    return result;
}

} // namespace leetcode::p0006
