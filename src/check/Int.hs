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

inDiff :: Int -> Int -> Int -> Bool
inDiff v min max
    | min > max = False
    | v > min && v < max = True
    | otherwise = False

---

outDiff :: Int -> Int -> Int -> Bool
outDiff v min max
    | min > max = False
    | v >= min && v <= max = True
    | otherwise = False

---

checkDigit :: [Int] -> Int -> Bool
checkDigit (l:ls) a = case (a < length (l:ls)) of
    True -> case (a > 0) of
        True -> case (l <= (head ls)) of
            True -> checkDigit ls (a - 1)
            False -> False
        False -> True
    False -> checkDigit (l:ls) (a - 1)

checkSort :: [Int] -> Bool
checkSort l = checkDigit l (length l)
