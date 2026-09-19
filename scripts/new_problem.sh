#!/usr/bin/env bash
# Scaffolds a new problem folder under solutions/, ready for a solution + test.
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $(basename "$0") <problem-number> <kebab-case-slug>" >&2
  echo "Example: $(basename "$0") 1 two-sum" >&2
  exit 1
fi

number="$1"
slug="$2"

padded=$(printf "%04d" "$number")
range_start=$(( ( (number - 1) / 100 ) * 100 + 1 ))
range_end=$(( range_start + 99 ))
range_dir=$(printf "%04d-%04d" "$range_start" "$range_end")

problem_dir="solutions/${range_dir}/${padded}-${slug}"

if [ -e "$problem_dir" ]; then
  echo "error: ${problem_dir} already exists" >&2
  exit 1
fi

mkdir -p "$problem_dir"

cat > "${problem_dir}/README.md" <<EOF
# ${number}. TODO: Problem title

[LeetCode problem ${number}](https://leetcode.com/problems/${slug}/)

- **Difficulty**: TODO (easy / medium / hard)
- **Tags**: TODO

## Description

TODO: summarize the problem statement in your own words.
EOF

cat > "${problem_dir}/solution.hpp" <<EOF
#pragma once

namespace leetcode::p${padded} {

// TODO: document time/space complexity, then declare the solution here.
// When adding another approach later, declare it alongside this one
// (e.g. solveBruteForce, solveOptimized) instead of creating a new file.

} // namespace leetcode::p${padded}
EOF

cat > "${problem_dir}/solution.cpp" <<EOF
#include "solution.hpp"

namespace leetcode::p${padded} {

// TODO: implement the solution.

} // namespace leetcode::p${padded}
EOF

cat > "${problem_dir}/test.cpp" <<EOF
#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem ${number}", "[p${padded}]") {
    // TODO: port the examples from the problem statement.
    REQUIRE(true);
}
EOF

echo "Created ${problem_dir}"
