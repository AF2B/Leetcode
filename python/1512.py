import unittest

class Solution:
    def numIdenticalPairs(self, nums: list[int]) -> int:
        results = []
        result = 0

        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[i] == nums[j]:
                    results.append((i, j))

        for _ in results:
            result += 1

        return result

class TestNumIdenticalPairs(unittest.TestCase):
    def setUp(self):
        self.sol = Solution()

    def testNumIdenticalPairs(self):
        self.assertEqual(self.sol.numIdenticalPairs([1, 2, 3, 1, 1, 3]), 4,
                         "Erro: esperado 4 pares bons para a lista [1, 2, 3, 1, 1, 3]")
        self.assertEqual(self.sol.numIdenticalPairs([1, 1, 1, 1]), 6,
                         "Erro: esperado 6 pares bons para a lista [1, 1, 1, 1]")
        self.assertEqual(self.sol.numIdenticalPairs([1, 2, 3]), 0,
                         "Erro: esperado 0 pares bons para a lista [1, 2, 3]")

if __name__ == '__main__':
    unittest.main()