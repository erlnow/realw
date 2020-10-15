-- |
-- Module      :  Ch02.LastButOne
-- Description :  Exercise 2
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 2 from Chapter 2: Types and functions, p. 39
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
--      ghci> hspec Ch02.LastButOneSpec.spec
-- @

module Ch02.LastButOne where

-- |Returns the element /before/ the last.
--
-- Give an error if the list is too short.
lastButOne :: [a] -> a
lastButOne xs = head ( tail (reverse xs))
