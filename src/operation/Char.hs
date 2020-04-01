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

cToI :: [Char] -> Int
cToI [] = 0
cToI a = read a

---

cToF :: [Char] -> Float
cToF [] = 0
cToF a = read a :: Float

---

convertSTOI :: [[Char]] -> Int -> [Int]
convertSTOI [] a = []
convertSTOI (l:ls) a = case (a > length (l:ls)) of
    False -> case (a > 0) of
        True -> (cToI l: (convertSTOI ls (a - 1)) )
        False -> []
    True -> convertSTOI (l:ls) (a - 1)

lStrTOlInt :: [String] -> [Int]
lStrTOlInt [] = ([])
lStrTOlInt a = (convertSTOI a (length a))
