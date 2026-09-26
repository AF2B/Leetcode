# Contributing

## Folder convention

Every problem lives at `solutions/<range>/<number>-<slug>/`, where `<range>` is
the hundred-wide bucket the problem number falls into (`0001-0100`,
`0101-0200`, ...), `<number>` is the zero-padded LeetCode problem number, and
`<slug>` is the kebab-case problem title.

```
solutions/0001-0100/0001-two-sum/
  README.md          # problem statement summary, link, difficulty, tags
  dune               # test executable definition
  solution.mli       # public interface
  solution.ml        # implementation
  test.ml            # Alcotest tests
```

- A problem is a single folder with exactly these four files — never a
  folder per approach.
- Every problem must have a `test.ml`; a solution without a test covering it
  isn't considered done.
- When a problem is solved more than one way, each approach is its own
  function declared in `solution.mli` and defined in `solution.ml` — e.g.
  `solve`, `solve_brute_force`, `solve_optimized`, `solve_two_pointers` —
  with a matching test case in `test.ml`. This isn't mandatory for every
  problem, but the convention is ready for it whenever revisiting a problem
  from another angle is worthwhile.
- Document each approach's time/space complexity as a short OCamldoc comment
  directly above its declaration in `solution.mli`.
- Prefer `result`/`option` over exceptions for expected failure cases (e.g.
  input outside the problem's stated constraints). Exceptions are reserved
  for invariant violations that should never happen.
- Pattern matching is exhaustive — avoid a catch-all `_` that would silently
  swallow a new case.
- The problem's `README.md` documents the problem itself — statement
  summary, LeetCode link, difficulty, tags — not the approaches or their
  complexity, which live as OCamldoc comments in `solution.mli`.

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

- OCaml, formatted with the repository's `.ocamlformat` (run `dune fmt`, or
  let your editor format on save).
- Every module that exposes an API ships an explicit `.mli` — that's where
  its documentation lives, one OCamldoc comment per public value.
- `dune build` treats its dev-profile warning set as errors — unused code,
  non-exhaustive matches, and shadowing all fail the build. That's the
  static-analysis check enforced in CI, in place of a separate linter.
- Prefer the standard library over hand-rolled utilities.

## Opening a pull request

1. Branch off `main`.
2. One problem (or one focused change) per pull request. When converting an
   existing solution from another language into OCaml, one converted
   problem is one pull request.
3. Make sure `dune build @all` and `dune runtest` pass, and that
   `dune build @fmt` reports no diff — the same checks CI runs (build &
   test, format check).
4. Describe which LeetCode problem is being solved (or what is being
   changed) and why, in the PR description.
