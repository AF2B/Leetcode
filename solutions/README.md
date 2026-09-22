# Solutions

Problems live here, grouped in ranges of 100 (`0001-0100`, `0101-0200`, ...) so the
folder stays browsable well past problem #3000.

```
solutions/0001-0100/0001-two-sum/
  README.md          # problem statement summary, link, difficulty, tags
  solution.hpp        # public interface — one function per approach
  solution.cpp        # implementation
  test.cpp            # Catch2 tests — one TEST_CASE per approach
```

Every problem must ship a test. When it's solved more than one way, each
approach lives as another function in the same `solution.hpp`/`solution.cpp`
— never a new folder. See [../CONTRIBUTING.md](../CONTRIBUTING.md) for the
full convention and `../scripts/new_problem.sh` to scaffold a new one.
