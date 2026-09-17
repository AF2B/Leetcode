[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode in Haskell

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Haskell](https://img.shields.io/badge/Haskell-GHC%209.10-blue.svg)

A collection of LeetCode solutions written entirely in Haskell. The same problem is often solved from multiple angles — the optimized approach, brute force, a typeclass-driven design, and classic design patterns encoded with Haskell's type system — with automated build, static analysis, formatting, and test checks running on every pull request.

## Why multiple approaches per problem

Solving a problem once proves you found an answer. Solving it again as a brute-force baseline, again favoring pure, typeclass-driven composition, and again behind a classic design pattern proves you understand *why* the answer works — and gives future-me a reference for how the same idea looks under different constraints.

## Repository structure

```
solutions/
  R0001_0100/
    P0001_TwoSum/
      README.md            # problem summary, tags, complexity per approach
      Optimized/
        Solution.hs
        SolutionSpec.hs
      BruteForce/
      Functional/
      DesignPatterns/
  R0101_0200/
    ...
```

Problems are grouped in ranges of 100 so the repository stays easy to browse well past problem #3000. Folder names double as Haskell module-name components, so they use `PascalCase`/`Snake_Case` segments instead of the hyphens LeetCode's own slugs use. Every problem folder documents the time/space complexity of each approach it contains. Only `Optimized/` is mandatory — the other approaches are added incrementally over time. `hspec-discover` automatically finds every `*Spec.hs` file under `solutions/`, so a new problem's tests run in CI with no manual registration.

SQL problems have no meaningful Haskell equivalent (LeetCode expects a SQL query, not a program), so the legacy `sql/` folder is kept as-is and out of scope for the Haskell migration.

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

Requirements: GHC ≥ 9.10 and Cabal ≥ 3.16 (a [ghcup](https://www.haskell.org/ghcup/) install covers both), plus [hpack](https://github.com/sol/hpack).

```bash
hpack
cabal build --enable-tests
cabal test
```

## Continuous integration

Every pull request runs three checks:

1. **Build & test** — `cabal build`/`cabal test` against every solution and its Hspec spec.
2. **Static analysis** — `hlint`.
3. **Format check** — `fourmolu --mode check`.

## Progress

🚧 This repository is being migrated to Haskell. Existing solutions previously written in other languages are being converted one pull request at a time.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the folder convention, commit style, and how to add a new problem.

## License

MIT — see [LICENSE](LICENSE).
