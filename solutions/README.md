# Solutions

Problems live here, grouped in ranges of 100 (`0001-0100`, `0101-0200`, ...) so the
folder stays browsable well past problem #3000.

```
solutions/0001-0100/0001-two-sum/
  README.md          # problem statement summary, link, difficulty, tags
  dune               # test executable definition
  solution.mli       # public interface
  solution.ml        # implementation
  test.ml            # Alcotest tests
```

Every problem must ship a test. When it's solved more than one way, each
approach lives as another function in the same `solution.mli`/`solution.ml`
— never a new folder. See [../CONTRIBUTING.md](../CONTRIBUTING.md) for the
full convention and `../scripts/new_problem.sh` to scaffold a new one.
