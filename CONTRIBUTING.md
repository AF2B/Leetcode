# Contributing

## Folder convention

Every problem lives at `solutions/<range>/<slug>/`, where `<range>` is the
hundred-wide bucket the problem number falls into (`R0001_0100`, `R0101_0200`,
...) and `<slug>` is `P<number>_<TitleCase problem name>`. Both segments must
be valid Haskell module-name components (start with an uppercase letter, no
hyphens) because the file's path doubles as its module name.

Inside a problem folder, each way of solving it gets its own subfolder:

```
solutions/R0001_0100/P0001_TwoSum/
  README.md          # problem summary, tags, complexity per approach
  Optimized/
    Solution.hs
    SolutionSpec.hs
  BruteForce/
  Functional/
  DesignPatterns/
```

- `Optimized/` is required — it's the best known time/space complexity solution.
- `BruteForce/`, `Functional/`, `DesignPatterns/` are added incrementally,
  whenever revisiting a problem from a different angle is worthwhile.
- Every approach folder has a `Solution.hs` (the implementation, with an
  explicit export list) and a `SolutionSpec.hs` (an Hspec spec covering the
  examples from the problem statement). `hspec-discover` picks up every
  `*Spec.hs` file under `solutions/` automatically — no manual registration
  needed.
- The problem's `README.md` documents, per approach, the time and space
  complexity and any notes worth remembering.

Run `scripts/new_problem.sh <number> <slug> [approach]` to scaffold a new
problem folder (defaults to `Optimized`).

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

- Formatted with the repository's `fourmolu.yaml` (run `fourmolu --mode
  inplace <files>` before committing, or let your editor format on save).
- `.hlint.yaml` defines the static-analysis rules enforced in CI.
- Prefer explicit export lists and total functions; prefer `Maybe`/`Either`
  over partial functions or sentinel values where it fits.
- After adding a dependency, add it to `package.yaml` (not directly to
  `leetcode.cabal`) and regenerate with `hpack`.

## Opening a pull request

1. Branch off `main`.
2. One problem (or one focused change) per pull request.
3. Make sure it builds, and that `cabal test`, `hlint solutions`, and
   `fourmolu --mode check` (on the files you touched) all pass locally — the
   same three checks run in CI (build & test, static analysis, format check).
4. Describe which LeetCode problem is being solved (or what is being
   changed) and why, in the PR description.
