[English](README.md) | [Português](README.pt-br.md) | [Русский](README.ru-ru.md)

# LeetCode in OCaml

![CI](https://github.com/AF2B/Leetcode/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![OCaml](https://img.shields.io/badge/OCaml-5-orange.svg)

A collection of LeetCode solutions written entirely in OCaml. Every solved
problem ships with an automated unit test, and the same problem is often
solved from more than one angle — brute force, optimized, recursive, and so
on — living side by side in the same files, with build, test, and format
checks running on every pull request.

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
      dune               # test executable definition
      solution.mli       # public interface
      solution.ml        # implementation
      test.ml            # Alcotest tests
  0101-0200/
    ...
```

Problems are grouped in ranges of 100 so the repository stays easy to browse
well past problem #3000. Every problem is a single folder with exactly four
files — never a folder per approach: when a problem is solved more than one
way, each approach is a separate function in the same
`solution.mli`/`solution.ml`, tested by its own case in the same `test.ml`.
The problem's `README.md` documents the problem itself (statement summary,
link, difficulty, tags), not the approaches, which are documented as
OCamldoc comments in `solution.mli`.

Every problem must ship a test — a solution without a `test.ml` covering it
isn't considered done.

SQL problems have no meaningful OCaml equivalent (LeetCode expects a SQL
query, not a program), so the legacy `sql/` folder is kept as-is and out of
scope for this migration.

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

Requirements: OCaml ≥ 5.0, [dune](https://dune.build) ≥ 3.0, and
[Alcotest](https://github.com/mirage/alcotest).

```bash
opam install . --deps-only --with-test
dune build @all
dune runtest
```

## Continuous integration

Every pull request runs two checks:

1. **Build & test** — `dune build @all` and `dune runtest` against every
   problem's `test.ml`, with the dev profile's warning set treated as
   errors (standing in for a separate linter).
2. **Format check** — `dune build @fmt`.

## Progress

🚧 This repository is being migrated to OCaml. Existing solutions previously
written in other languages (Clojure, Go, Python, Ruby, Swift, TypeScript) are
being converted one pull request at a time.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the folder convention, commit
style, and how to add a new problem.

## License

MIT — see [LICENSE](LICENSE).
