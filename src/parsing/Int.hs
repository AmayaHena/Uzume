--
-- PERSONAL PROJECT, 2020
-- Uzume
-- File description:
-- Int
--

module Int
( isDigit,
  listIsDigit
) where

-- look at the current String and return
-- True if it contains only numbers, False otherwise
-- error case, return False
-- ex : True = isDigit "12345"
-- ex : False = isDigit "1a2b3c4d5"

isDigit :: [Char] -> Bool
isDigit [] = False
isDigit s = case reads s :: [(Integer, String)] of
    [(_, "")] -> True
    _         -> False

---

-- look at the current String and return
-- True if it contains only numbers, False otherwise
-- error case, return False
-- ex : True = listIsDigit ["34","56"]
-- ex : False = listIsDigit ["34","5a6"]

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
