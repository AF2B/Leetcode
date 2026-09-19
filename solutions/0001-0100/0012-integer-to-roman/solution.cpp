#include "solution.hpp"

#include <array>
#include <utility>

namespace leetcode::p0012 {

std::string solve(int num) {
    static constexpr std::array<std::pair<int, const char*>, 13> romanSymbols{{
        {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"}, {100, "C"}, {90, "XC"}, {50, "L"},
        {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"},
    }};

    std::string result;

    for (const auto& [value, symbol] : romanSymbols) {
        while (num >= value) {
            result += symbol;
            num -= value;
        }
    }

    return result;
}

}  // namespace leetcode::p0012
