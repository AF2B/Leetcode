#include "solution.hpp"

#include <cstdlib>
#include <iterator>

namespace leetcode::p3110 {

int solve(const std::string& s) {
    int score = 0;

    for (int i = 0; i + 1 < std::ssize(s); ++i) {
        score += std::abs(static_cast<unsigned char>(s.at(static_cast<std::size_t>(i))) -
                          static_cast<unsigned char>(s.at(static_cast<std::size_t>(i) + 1)));
    }

    return score;
}

} // namespace leetcode::p3110
