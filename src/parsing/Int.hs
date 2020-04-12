--
-- PERSONAL PROJECT, 2020
-- Uzume
-- File description:
-- Int
--

module PInt
( isDigit,
  listIsDigit
) where

-- look at the current String and return
-- True if it contains only numbers, False otherwise
-- error case, return False
-- ex : isDigit "12345" = True
-- ex : isDigit "1a2b3c4d5" = False

isDigit :: [Char] -> Bool
isDigit [] = False
isDigit s = case reads s :: [(Integer, String)] of
    [(_, "")] -> True
    _         -> False

---

-- look at the current String and return
-- True if it contains only numbers, False otherwise
-- error case, return False
-- ex : listIsDigit ["34","56"] = True
-- ex : listIsDigit ["34","5a6"] = False

followList :: [String] -> Int -> Bool
followList l n = case (n > 0) of
    True -> do
        case (isDigit $ l !! (n - 1)) of
            True -> followList l (n - 1)
            False -> False
    False -> True

listIsDigit :: [String] -> Bool
listIsDigit [] = False
listIsDigit l = followList l (length l)
