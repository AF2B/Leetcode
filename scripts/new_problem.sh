#!/usr/bin/env bash
# Scaffolds a new problem folder under solutions/, ready for a solution + test.
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $(basename "$0") <problem-number> <kebab-case-slug> [approach]" >&2
  echo "Example: $(basename "$0") 1 two-sum optimized" >&2
  exit 1
fi

number="$1"
slug="$2"
approach="${3:-optimized}"

padded=$(printf "%04d" "$number")
range_start=$(( ( (number - 1) / 100 ) * 100 + 1 ))
range_end=$(( range_start + 99 ))
range_dir=$(printf "%04d-%04d" "$range_start" "$range_end")

problem_dir="solutions/${range_dir}/${padded}-${slug}"
approach_dir="${problem_dir}/${approach}"

mkdir -p "$approach_dir"

if [ ! -f "${problem_dir}/README.md" ]; then
  cat > "${problem_dir}/README.md" <<EOF
# ${number}. TODO: Problem title

[LeetCode problem ${number}](https://leetcode.com/problems/${slug}/)

- **Difficulty**: TODO (easy / medium / hard)
- **Tags**: TODO

## Approaches

| Approach | Time | Space | Notes |
|---|---|---|---|
| ${approach} | TODO | TODO | TODO |
EOF
fi

cat > "${approach_dir}/solution.hpp" <<EOF
#pragma once

namespace leetcode::p${padded} {

// TODO: declare the solution's public interface here.

}  // namespace leetcode::p${padded}
EOF

cat > "${approach_dir}/solution.cpp" <<EOF
#include "solution.hpp"

namespace leetcode::p${padded} {

// TODO: implement the solution.

}  // namespace leetcode::p${padded}
EOF

cat > "${approach_dir}/test.cpp" <<EOF
#include <catch2/catch_test_macros.hpp>

#include "solution.hpp"

TEST_CASE("Problem ${number} - ${approach}", "[p${padded}]") {
    // TODO: port the examples from the problem statement.
    REQUIRE(true);
}
EOF

echo "Created ${approach_dir}"
