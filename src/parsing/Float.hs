--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Float
--

module PFloat
( isFloat
) where

-- look at the current String and return
-- True if it contains only numbers (Float) , False otherwise
-- error case, return False
-- ex : isFloat "12345" = True
-- ex : isFloat "1a2b3c4d5" = False

isFloat :: [Char] -> Bool
isFloat [] = False
isFloat s = case reads s :: [(Float, String)] of
    [(_, "")] -> True
    _         -> False
