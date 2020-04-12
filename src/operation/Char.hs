--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Char
--

module OChar
( cToI,
  cToF,
  lStrTOlInt
) where

-- convert a String to an Int
-- error case, return 0
-- ex : cToI "123" = 123

cToI :: [Char] -> Int
cToI [] = 0
cToI a = read a

---

-- convert a String to an Float
-- error case, return 0
-- ex : cToF "123" = 123

cToF :: [Char] -> Float
cToF [] = 0
cToF a = read a :: Float

---

-- convert a list String to a list of Float
-- error case, return []
-- ex : lStrTOlInt ["10", "11", "12"] = [10, 11, 12]

convertSTOI :: [[Char]] -> Int -> [Int]
convertSTOI [] a = []
convertSTOI (l:ls) a = case (a > length (l:ls)) of
    False -> case (a > 0) of
        True -> (cToI l: (convertSTOI ls (a - 1)) )
        False -> []
    True -> convertSTOI (l:ls) (a - 1)

lStrTOlInt :: [String] -> [Int]
lStrTOlInt [] = []
lStrTOlInt a = (convertSTOI a (length a))
