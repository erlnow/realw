-- |
-- Module      :  Ch03.Add
-- Description :  Pattern matching
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions 
-- 

module Ch03.Add where

-- Defined in Chapter 2: Types and functions
add :: Int -> Int -> Int
add a b = a + b

-- Pattern Matching, p. 50
myNot True  = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList []     = 0
