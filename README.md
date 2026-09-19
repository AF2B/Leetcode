[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode in C++

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![C++23](https://img.shields.io/badge/C%2B%2B-23-blue.svg)

A collection of LeetCode solutions written entirely in C++23. Every solved
problem ships with an automated unit test, and the same problem is often
solved from more than one angle — brute force, optimized, recursive, and so
on — living side by side in the same files, with build, static analysis, and
format checks running on every pull request.

## Why multiple approaches per problem

Solving a problem once proves you found an answer. Solving it again as a
brute-force baseline, again as the optimized version, again recursively (or
however else it can be attacked) proves you understand *why* the answer
works — and leaves a reference for how the same idea looks under different
constraints. It isn't a requirement for every problem, but the structure is
ready for it whenever it's worth doing.

## Repository structure

```
solutions/
  0001-0100/
    0001-two-sum/
      README.md         # problem statement summary, link, difficulty, tags
      solution.hpp       # public interface — one function per approach
      solution.cpp       # implementation
      test.cpp           # Catch2 tests — one TEST_CASE per approach
  0101-0200/
    ...
```

Problems are grouped in ranges of 100 so the repository stays easy to browse
well past problem #3000. Every problem is a single folder with exactly three
code files — never a folder per approach: when a problem is solved more than
one way, each approach is a separate function (or method) in the same
`solution.hpp`/`solution.cpp`, tested by its own `TEST_CASE` in the same
`test.cpp`. The problem's `README.md` documents the problem itself (statement
summary, link, difficulty, tags), not the approaches, which are documented as
comments in the code.

Every problem must ship a test — a solution without a `test.cpp` covering it
isn't considered done.

SQL problems have no meaningful C++ equivalent (LeetCode expects a SQL query,
not a program), so the legacy `sql/` folder is kept as-is and out of scope
for this migration.

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

## Building and testing locally

Requirements: CMake ≥ 3.20 and a C++23 compiler (GCC ≥ 13 or Clang ≥ 16).

```bash
cmake -S . -B build
cmake --build build --parallel
ctest --test-dir build --output-on-failure
```

## Continuous integration

Every pull request runs three checks:

1. **Build & test** — CMake + Catch2 against every problem's `test.cpp`.
2. **Static analysis** — `clang-tidy` and `cppcheck`.
3. **Format check** — `clang-format --dry-run --Werror`.

## Progress

🚧 This repository is being migrated to C++23. Existing solutions previously
written in other languages (Clojure, Go, Python, Ruby, Swift, TypeScript) are
being converted one pull request at a time.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the folder convention, commit
style, and how to add a new problem.

## License

MIT — see [LICENSE](LICENSE).
