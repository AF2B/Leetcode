#pragma once

#include <any>
#include <cstddef>
#include <initializer_list>

namespace leetcode::p2703 {

// optimized: O(1) time, O(1) space — an initializer_list already knows its
// size.
std::size_t solve(std::initializer_list<std::any> args);

} // namespace leetcode::p2703
