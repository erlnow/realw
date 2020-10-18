-- |
-- Module      :  Ch03.Tuples
-- Description :  Pattern Matching
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions
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
--      ghci> hspec Ch03.TuplesSpec.spec
-- @

module Ch03.Tuples where

-- Further adventures, p. 52

third (a, b, c) = c

complicated (True, a, x:xs, 5) = (a, xs)
