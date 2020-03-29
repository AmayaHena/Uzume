--
-- EPITECH PROJECT, 2020
-- Uzume
-- File description:
-- Int
--

module CInt
( iToC,
  doMod,
  doDiv
) where

iToC :: Int -> String
iToC a = show a

doDiv :: Int -> Int -> Int
doDiv a b = a `div` b

doMod :: Int -> Int -> Int
doMod a b = a `mod` b
