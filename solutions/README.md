# Solutions

Problems live here, grouped in ranges of 100 (`R0001_0100`, `R0101_0200`, ...)
so the folder stays browsable well past problem #3000. Folder names double as
Haskell module-name components, so they use `PascalCase`/`Snake_Case`
segments instead of the hyphens LeetCode's own slugs use.

```
solutions/R0001_0100/P0001_TwoSum/
  README.md            # problem summary, tags, complexity per approach
  Optimized/
    Solution.hs
    SolutionSpec.hs
  BruteForce/
  Functional/
  DesignPatterns/
```

Only `Optimized/` is required for a problem to be considered solved; the other
approaches are added incrementally. `hspec-discover` (wired up in
`solutions/Spec.hs`) automatically finds every `*Spec.hs` file in this tree,
so a new problem's tests run in CI with no manual registration. See
[../CONTRIBUTING.md](../CONTRIBUTING.md) for the full convention and
`../scripts/new_problem.sh` to scaffold a new one.
