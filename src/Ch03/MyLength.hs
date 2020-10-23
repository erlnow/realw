-- |
-- Module      :  Ch03.MyLength
-- Description :  Exercise 1 - function like `lenght`
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 1 from Chapter 3: Defining Types, Streamlining Functions
-- 
-- Note to run tests:
--
-- @
--      $ cabal new-run spec
-- @
--
-- or in @ghci@:
--
-- @
--      $ cabal new-repl spec
--      ghci> hspec Ch03.MyLengthSpec.spec
-- @

module Ch03.MyLength where

-- *Exercise 1, p. 69
--
-- $ex1
--
-- Write a function that computes the number of elements in a list. To test it,
-- ensure that it gives the same answers as the standard 'length' function.

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
