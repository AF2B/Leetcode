#include "solution.hpp"

namespace leetcode::p0058 {

int solve(const std::string& s) {
    int i = static_cast<int>(s.size()) - 1;

    while (i >= 0 && s.at(static_cast<std::size_t>(i)) == ' ') {
        --i;
    }

    int length = 0;
    while (i >= 0 && s.at(static_cast<std::size_t>(i)) != ' ') {
        ++length;
        --i;
    }

    return length;
}

} // namespace leetcode::p0058
