-- |
-- Module      :  Ch03.BadPattern
-- Description :  Exhaustive Patterns and Wild Cards
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.BadPattern where

-- from p. 54
-- This function, when we apply to a value that it cannot match the pattern,
-- will give an runtime error: "Exception: Non-exahustive pattern".
-- badExample (x:xs) = x + badExample xs

goodExample :: Num a => [a] -> a
goodExample (x:xs) = x + goodExample xs
goodExample _      = 0
