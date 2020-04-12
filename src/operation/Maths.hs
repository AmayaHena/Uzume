--
-- PERSONAL PROJECT, 2020
-- Uzume
-- File description:
-- Maths
--

module Maths
( average
) where

-- evaluate the average of a list of Int
-- error case, return 0
-- ex : average [10, 20] = 15

average :: [Int] -> Int
average [] = 0
average l = sum [l !! i | i <- take k [0,1..]] `div` k
    where
        k = length l
