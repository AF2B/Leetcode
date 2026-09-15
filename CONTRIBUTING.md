# Contributing

## Folder convention

Every problem lives at `solutions/<range>/<number>-<slug>/`, where `<range>` is
the hundred-wide bucket the problem number falls into (`0001-0100`,
`0101-0200`, ...), `<number>` is the zero-padded LeetCode problem number, and
`<slug>` is the kebab-case problem title.

Inside a problem folder, each way of solving it gets its own subfolder:

```
solutions/0001-0100/0001-two-sum/
  README.md          # problem summary, tags, complexity per approach
  optimized/
    solution.hpp
    solution.cpp
    test.cpp
  brute-force/
  oop/
  functional/
  design-patterns/
```

- `optimized/` is required — it's the best known time/space complexity solution.
- `brute-force/`, `oop/`, `functional/`, `design-patterns/` are added
  incrementally, whenever revisiting a problem from a different angle is
  worthwhile.
- Every approach folder has a `solution.hpp` (public interface),
  `solution.cpp` (implementation), and a `test.cpp` (Catch2 test covering the
  examples from the problem statement).
- The problem's `README.md` documents, per approach, the time and space
  complexity and any notes worth remembering.

Run `scripts/new_problem.sh <number> <slug> [approach]` to scaffold a new
problem folder (defaults to `optimized`).

## Commit convention

Every commit is tagged with an emoji describing its intent:

| Emoji | Meaning |
|---|---|
| 🟢 | Solves an **easy** problem |
| 🟡 | Solves a **medium** problem |
| 🔴 | Solves a **hard** problem |
| 🐛 | Bug fix |
| 📝 | Documentation update |
| 🚀 | Performance improvement |
| ⚡️ | Refactor |
| 🎨 | Formatting / structural style |
| 🚧 | Work in progress |
| 🔧 | Tooling, build system, or CI change |

## Code style

- C++23, formatted with the repository's `.clang-format` (run
  `clang-format -i` before committing, or let your editor format on save).
- `.clang-tidy` defines the static-analysis rules enforced in CI.
- Prefer the standard library over hand-rolled utilities; prefer
  `std::optional`/`std::expected` over sentinel values where it fits.

## Opening a pull request

1. Branch off `main`.
2. One problem (or one focused change) per pull request.
3. Make sure it builds, and that `ctest`, `clang-tidy`, `cppcheck`, and
   `clang-format --dry-run --Werror` all pass locally — the same three checks
   run in CI (build & test, static analysis, format check).
4. Describe which LeetCode problem is being solved (or what is being
   changed) and why, in the PR description.
