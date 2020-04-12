--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Int
--

module CInt
( inDiff,
  outDiff,
  checkSort
) where

-- check if an int is inside a definition of 2 values
-- error case, return False
-- ex : inDiff [0, 20,  30] = True
-- ex : inDiff [0, 0, 30] = False

inDiff :: Int -> Int -> Int -> Bool
inDiff v min max
    | min > max = False
    | v > min && v < max = True
    | otherwise = False

---

-- check if an int is inside a definition of 2 values
-- error case, return False
-- ex : outDiff [0, 20,  30] = True
-- ex : outDiff [0, 0, 30] = True

outDiff :: Int -> Int -> Int -> Bool
outDiff v min max
    | min > max = False
    | v >= min && v <= max = True
    | otherwise = False

---

-- check if a list of Int is sorted
-- error case, return False
-- ex : checkSort [0, 1, 2, 3] = True
-- ex : checkSort [0, 999, 2, 3] = False

checkDigit :: [Int] -> Int -> Bool
checkDigit (l:ls) a = case (a < length (l:ls)) of
    True -> case (a > 0) of
        True -> case (l <= (head ls)) of
            True -> checkDigit ls (a - 1)
            False -> False
        False -> True
    False -> checkDigit (l:ls) (a - 1)

checkSort :: [Int] -> Bool
checkSort [] = False
checkSort l = checkDigit l (length l)
