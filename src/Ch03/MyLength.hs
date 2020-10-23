-- |
-- Module      :  Ch03.MyLength
-- Description :  Exercise 1 & 2 - function like `lenght`
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 1 and 2 from Chapter 3: Defining Types, Streamlining Functions

module Ch03.MyLength where

-- *Exercise 1, p. 69
--
-- $ex1
--
-- Write a function that computes the number of elements in a list. To test it,
-- ensure that it gives the same answers as the standard 'length' function.

-- *Exercise 2, p. 70
--
-- $ex2
--
-- Add a type signature for your fuction to your source file. To test it, load
-- the source file in __`ghci`__ again.

-- |Computes the number of elements in a list
--
-- >>> myLength [] == length []
-- True
--
-- >>> myLength "abc" == length "abc"
-- True
--
-- >>> myLength [1..10] == length [1..10]
-- True
myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs
