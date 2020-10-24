-- |
-- Module      :  Ch03.Intersperse
-- Description :  Exercise 7
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 7 from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Intersperse where

-- *Exercise 7, p. 70
--
-- $ex7
--
-- Define a function that joins a list of lists together using a
-- separator value:
--
-- @
-- -- file: ch03/Intersperse.hs
-- intersperse :: a -> [[a]] -> [a]
-- @

-- *Exercise 8, p. 70
--
-- $ex8
--
-- The separator should appear between elements of the list, but it
-- should not follow the last element. Your function should behave as follow:
--
-- @
-- ghci> :load Intersperse
-- [1 of 1] Compiling Main               (Intersperse.hs, interpreted)
-- Ok, moduled loaded: Main
-- ghci> intersperse ',' []
-- ""
-- ghci> intersperse ',' ["foo"]
-- "foo"
-- ghci> intersperse ',' ["foo","bar","baz","quux"]
-- "foo,bar,baz,quux"
-- @

-- |joins a list of list together using a separator operator
--
-- Example:
--
-- >>> intersperse ',' []
-- "" 
-- >>> intersperse ',' ["foo"]
-- "foo"
-- >>> intersperse ',' ["foo","bar","baz","quux"]
-- "foo,bar,baz,quux"
intersperse :: a -> [[a]] -> [a]
intersperse _   []       = []
intersperse _   [xs]     = xs
intersperse sep (xs:xss) = xs ++  [sep] ++ (intersperse sep xss) 
