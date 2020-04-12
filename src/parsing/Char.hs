--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Char
--

module PChar
( isChar,
  listIsChar
) where

-- look at the current String and return
-- True if it contains only char, False otherwise
-- ex : isChar "abcde" = True
-- ex : isChar "a1b2c3d4e" = False

isChar :: String -> Bool
isChar [] = True
isChar (x:xs)
    | x >= 'a' && x <= 'z' = isChar xs
    | otherwise = False

---

-- look at the current String and return
-- True if it contains only char, False otherwise
-- ex : listIsDigit ["ab","cd"] = True
-- ex : listIsDigit ["a1b2","cd"] = False

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