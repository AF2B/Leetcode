# Contributing

## Folder convention

Every problem lives at `solutions/<range>/<number>-<slug>/`, where `<range>` is
the hundred-wide bucket the problem number falls into (`0001-0100`,
`0101-0200`, ...), `<number>` is the zero-padded LeetCode problem number, and
`<slug>` is the kebab-case problem title.

```
solutions/0001-0100/0001-two-sum/
  README.md          # problem statement summary, link, difficulty, tags
  solution.hpp        # public interface
  solution.cpp        # implementation
  test.cpp            # Catch2 tests
```

- A problem is a single folder with exactly these three code files — never a
  folder per approach.
- Every problem must have a `test.cpp`; a solution without a test covering it
  isn't considered done.
- When a problem is solved more than one way, each approach is its own
  function (or method) declared in `solution.hpp` and defined in
  `solution.cpp` — e.g. `solve`, `solveBruteForce`, `solveOptimized`,
  `solveTwoPointers` — with a matching `TEST_CASE` in `test.cpp`. This isn't
  mandatory for every problem, but the convention is ready for it whenever
  revisiting a problem from another angle is worthwhile.
- Document each approach's time/space complexity as a short comment directly
  above its declaration in `solution.hpp`.
- The problem's `README.md` documents the problem itself — statement
  summary, LeetCode link, difficulty, tags — not the approaches or their
  complexity, which live as comments in the code.

Run `scripts/new_problem.sh <number> <slug>` to scaffold a new problem
folder.

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
2. One problem (or one focused change) per pull request. When converting an
   existing solution from another language into C++, one converted problem
   is one pull request.
3. Make sure it builds, and that `ctest`, `clang-tidy`, `cppcheck`, and
   `clang-format --dry-run --Werror` all pass locally — the same three checks
   run in CI (build & test, static analysis, format check).
4. Describe which LeetCode problem is being solved (or what is being
   changed) and why, in the PR description.
