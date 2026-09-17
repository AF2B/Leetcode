module R0001_0100.P0001_TwoSum.Optimized.SolutionSpec (spec) where

import R0001_0100.P0001_TwoSum.Optimized.Solution (twoSum)
import Test.Hspec

spec :: Spec
spec = describe "twoSum" $ do
  it "finds indices of two numbers that add up to target" $
    twoSum [2, 7, 11, 15] 9 `shouldBe` [0, 1]

  it "works when the pair is not adjacent" $
    twoSum [3, 2, 4] 6 `shouldBe` [1, 2]

  it "supports duplicate values" $
    twoSum [3, 3] 6 `shouldBe` [0, 1]
