#include "solution.hpp"

#include <algorithm>
#include <array>
#include <unordered_map>

namespace leetcode::p0242 {

bool solve(const std::string& s, const std::string& t) {
    if (s.size() != t.size()) {
        return false;
    }

    std::array<int, 26> counts{};

    for (char c : s) {
        ++counts.at(static_cast<std::size_t>(c - 'a'));
    }
    for (char c : t) {
        --counts.at(static_cast<std::size_t>(c - 'a'));
    }

    return std::ranges::all_of(counts, [](int count) { return count == 0; });
}

bool solveHashMap(const std::string& s, const std::string& t) {
    if (s.size() != t.size()) {
        return false;
    }

    std::unordered_map<char, int> countS;
    std::unordered_map<char, int> countT;

    for (char c : s) {
        ++countS[c];
    }
    for (char c : t) {
        ++countT[c];
    }

    return countS == countT;
}

} // namespace leetcode::p0242
