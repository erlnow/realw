-- |
-- Module      :  Ch03.Roygbiv
-- Description :  Analogues to Algebraic Data Types in Other Languages
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions, p. 
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
--      ghci> hspec Ch03.RoygbivSpec.spec
-- @

module Ch03.Roygbiv where

-- the enumeration, p. 48
--
-- An example from C:
--
-- enum roygbiv {
--      red,
--      orange,
--      yellow,
--      green,
--      blue,
--      indigo,
--      violet,
-- };

data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
             deriving (Eq, Show)
