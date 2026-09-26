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

cat > "${problem_dir}/dune" <<EOF
(test
 (name test)
 (modules solution test)
 (libraries alcotest))
EOF

cat > "${problem_dir}/solution.mli" <<EOF
(** TODO: one-line summary of what this problem asks for. *)

(** [solve ...] TODO: document the contract.

    Time: TODO. Space: TODO. *)
val solve : unit -> unit
EOF

cat > "${problem_dir}/solution.ml" <<EOF
let solve () = ()
EOF

cat > "${problem_dir}/test.ml" <<EOF
let test_examples () =
  (* TODO: port the examples from the problem statement. *)
  Alcotest.(check bool) "placeholder" true true

let () =
  Alcotest.run "${number}: TODO"
    [ ("solve", [ Alcotest.test_case "examples" \`Quick test_examples ]) ]
EOF

echo "Created ${problem_dir}"
