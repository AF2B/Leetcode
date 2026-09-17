module R0001_0100.P0001_TwoSum.Optimized.Solution (twoSum) where

import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

twoSum :: [Int] -> Int -> [Int]
twoSum xs target = go xs 0 Map.empty
  where
    go :: [Int] -> Int -> Map Int Int -> [Int]
    go [] _ _ = []
    go (x : rest) i seen =
      case Map.lookup (target - x) seen of
        Just j -> [j, i]
        Nothing -> go rest (i + 1) (Map.insert x i seen)
