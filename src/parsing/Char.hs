--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Char
--

module Char
( isChar,
  listIsChar
) where

-- look at the current String and return
-- True if it contains only char, False otherwise
-- ex : True = isChar "abcde"
-- ex : False = isChar "a1b2c3d4e"

isChar :: String -> Bool
isChar [] = True
isChar (x:xs)
    | x >= 'a' && x <= 'z' = isChar xs
    | otherwise = False

---

-- look at the current String and return
-- True if it contains only char, False otherwise
-- ex : True = listIsDigit ["ab","cd"]
-- ex : False = listIsDigit ["a1b2","cd"]

followList :: [String] -> Int -> Bool
followList l n = case (n > 0) of
    True -> do
        case (isChar $ l !! (n - 1)) of
            True -> followList l (n - 1)
            False -> False
    False -> True

listIsChar :: [String] -> Bool
listIsChar [] = False
listIsChar l = followList l (length l)