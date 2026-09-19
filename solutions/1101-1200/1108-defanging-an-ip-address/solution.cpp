#include "solution.hpp"

namespace leetcode::p1108 {

std::string solve(const std::string& address) {
    std::string result;
    result.reserve(address.size());

    for (char c : address) {
        if (c == '.') {
            result += "[.]";
        } else {
            result += c;
        }
    }

    return result;
}

} // namespace leetcode::p1108
