--
-- PERSONAL PROJECT, 2020
-- Uzume
-- File description:
-- Maths
--

module Maths
( average
) where
import Data.List

average :: [Int] -> Int
average l = sum [l !! i | i <- take k [0,1..]] `div` k
    where
        k = length l
