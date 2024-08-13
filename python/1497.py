import unittest

class Solution:
    def canArrange(self, arr: list[int], k: int) -> bool:
        length = len(arr)
        
        for i in range(length // 2):
            j = length - i - 1
            if (arr[i] + arr[j]) % k != 0:
                return False
        return True

class TestCanArrange(unittest.TestCase):
    def setUp(self):
        self.sol = Solution()
        
    def testCanArrange(self):
        self.assertTrue(self.sol.canArrange([1, 2, 3, 4, 5, 10, 6, 7, 8, 9], 5),
                         "Erro: esperado True para a lista [1, 2, 3, 4, 5, 10, 6, 7, 8, 9] e k = 5")

        self.assertTrue(self.sol.canArrange([1, 2, 3, 4, 5, 6], 7),
                            "Erro: esperado True para a lista [1, 2, 3, 4, 5, 6] e k = 7")
        
        self.assertFalse(self.sol.canArrange([1, 2, 3, 4, 5, 6], 10),
                            "Erro: esperado False para a lista [1, 2, 3, 4, 5, 6] e k = 10")
        
        self.assertTrue(self.sol.canArrange([-1,1,-2,2,-3,3,-4,4], 3),
                         "Erro: esperado True para a lista [-1,1,-2,2,-3,3,-4,4] e k = 3")

if __name__ == '__main__':
    unittest.main()
