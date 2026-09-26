# 6. Zigzag Conversion

[LeetCode problem 6](https://leetcode.com/problems/zigzag-conversion/)

- **Difficulty**: medium
- **Tags**: string

## Description

Write the string `s` in a zigzag pattern on a given number of rows, then
read it row by row to produce the converted string.

Constraints: `1 <= s.length <= 1000`, `1 <= numRows <= 1000`.

Note: the original Clojure solution read a fixed string from a local
fixture file instead of taking it as a parameter, and one of its own test
assertions (`numRows = 3`) didn't match what the real algorithm produces.
This port implements the actual parametrized algorithm against the
canonical LeetCode examples.
