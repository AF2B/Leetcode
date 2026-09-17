#!/usr/bin/env bash
# Scaffolds a new problem folder under solutions/, ready for a solution + spec.
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $(basename "$0") <problem-number> <kebab-case-slug> [approach]" >&2
  echo "Example: $(basename "$0") 1 two-sum optimized" >&2
  exit 1
fi

# kebab-case -> PascalCase, e.g. "two-sum" -> "TwoSum", "brute-force" -> "BruteForce".
to_pascal_case() {
  echo "$1" | awk -F'-' '{ for (i = 1; i <= NF; i++) { printf "%s%s", toupper(substr($i,1,1)), substr($i,2) } }'
}

number="$1"
slug="$2"
approach_input="${3:-optimized}"

slug_pascal=$(to_pascal_case "$slug")
approach_pascal=$(to_pascal_case "$approach_input")

padded=$(printf "%04d" "$number")
range_start=$(( ( (number - 1) / 100 ) * 100 + 1 ))
range_end=$(( range_start + 99 ))
range_dir=$(printf "R%04d_%04d" "$range_start" "$range_end")

problem_dir="solutions/${range_dir}/P${padded}_${slug_pascal}"
approach_dir="${problem_dir}/${approach_pascal}"
module_prefix="${range_dir}.P${padded}_${slug_pascal}.${approach_pascal}"

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
| ${approach_pascal} | TODO | TODO | TODO |
EOF
fi

cat > "${approach_dir}/Solution.hs" <<EOF
module ${module_prefix}.Solution (
  -- TODO: export the solution's public function(s) here.
) where

-- TODO: implement the solution.
EOF

cat > "${approach_dir}/SolutionSpec.hs" <<EOF
module ${module_prefix}.SolutionSpec (spec) where

import ${module_prefix}.Solution ()
import Test.Hspec

spec :: Spec
spec = describe "Problem ${number} - ${approach_pascal}" $ do
  it "TODO: port the examples from the problem statement" $
    pendingWith "not implemented yet"
EOF

if command -v hpack >/dev/null 2>&1; then
  hpack
else
  echo "Warning: hpack not found on PATH — run 'hpack' manually to register the new module(s) in leetcode.cabal." >&2
fi

if command -v fourmolu >/dev/null 2>&1; then
  fourmolu --mode inplace "${approach_dir}"/*.hs
else
  echo "Warning: fourmolu not found on PATH — run 'fourmolu --mode inplace ${approach_dir}/*.hs' manually before committing." >&2
fi

echo "Created ${approach_dir}"
