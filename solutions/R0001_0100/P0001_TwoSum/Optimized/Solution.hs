module R0001_0100.P0001_TwoSum.Optimized.Solution (twoSum) where

import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

twoSum :: [Int] -> Int -> [Int]
twoSum xs target = findComplementIndices target xs 0 Map.empty

{- | Walks the list once, remembering each value's index in `seenValues`,
until it finds a value whose complement (target - value) was already seen.
-}
findComplementIndices :: Int -> [Int] -> Int -> Map Int Int -> [Int]
findComplementIndices _ [] _ _ = []
findComplementIndices target (x : rest) index seenValues =
  case Map.lookup (target - x) seenValues of
    Just seenIndex -> [seenIndex, index]
    Nothing -> findComplementIndices target rest (index + 1) (Map.insert x index seenValues)
