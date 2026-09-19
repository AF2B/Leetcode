#include "solution.hpp"

namespace leetcode::p1768 {

std::string solve(const std::string& word1, const std::string& word2) {
    std::string result;
    result.reserve(word1.size() + word2.size());

    std::size_t i = 0;
    while (i < word1.size() || i < word2.size()) {
        if (i < word1.size()) {
            result += word1[i];
        }
        if (i < word2.size()) {
            result += word2[i];
        }
        ++i;
    }

    return result;
}

} // namespace leetcode::p1768
