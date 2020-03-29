--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Int
--

module CInt
( inDiff,
  outDiff,
  doMod,
  doDiv
) where

inDiff :: Int -> Int -> Int -> Bool
inDiff v min max
    | min > max = False
    | v > min && v < max = True
    | otherwise = False

outDiff :: Int -> Int -> Int -> Bool
outDiff v min max
    | min > max = False
    | v >= min && v <= max = True
    | otherwise = False

doDiv :: Int -> Int -> Int
doDiv a b = a `div` b

doMod :: Int -> Int -> Int
doMod a b = a `mod` b
