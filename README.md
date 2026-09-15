[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode in C++

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![C++23](https://img.shields.io/badge/C%2B%2B-23-blue.svg)

A collection of LeetCode solutions written entirely in modern C++ (C++23). The same problem is often solved from multiple angles — the optimized approach, brute force, object-oriented design, functional style, and classic design patterns — with automated build, static analysis, formatting, and test checks running on every pull request.

## Why multiple approaches per problem

Solving a problem once proves you found an answer. Solving it again as a class hierarchy, again with `std::ranges` and no mutable state, and again behind a design pattern proves you understand *why* the answer works — and gives future-me a reference for how the same idea looks under different constraints.

## Repository structure

```
solutions/
  0001-0100/
    0001-two-sum/
      README.md            # problem summary, tags, complexity per approach
      optimized/
        solution.hpp
        solution.cpp
        test.cpp
      brute-force/
      oop/
      functional/
      design-patterns/
  0101-0200/
    ...
```

Problems are grouped in ranges of 100 so the repository stays easy to browse well past problem #3000. Every problem folder documents the time/space complexity of each approach it contains. Only `optimized/` is mandatory — the other approaches are added incrementally over time.

SQL problems have no meaningful C++ equivalent (LeetCode expects a SQL query, not a program), so the legacy `sql/` folder is kept as-is and out of scope for the C++ migration.

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
cmake --build build
ctest --test-dir build --output-on-failure
```

## Continuous integration

Every pull request runs three checks:

1. **Build** — compiles every solution with `-Wall -Wextra -Wpedantic -Werror`.
2. **Static analysis** — `clang-tidy` and `cppcheck`.
3. **Format check** — `clang-format --dry-run --Werror`.

## Progress

🚧 This repository is being migrated to C++. Existing solutions previously written in other languages are being converted one pull request at a time.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the folder convention, commit style, and how to add a new problem.

## License

MIT — see [LICENSE](LICENSE).
