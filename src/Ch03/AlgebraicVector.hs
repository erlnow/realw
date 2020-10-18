-- |
-- Module      :  Ch03.AlgebraicVector
-- Description :  Tuples, Algebraic Data Types, and When to Use Each
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
--      ghci> hspec Ch03.AlgebraicVectorSpec.spec
-- @

module Ch03.AlgebraicVector where

-- Tuples, Algebraic Data Types, and When to Use Each, p. 46

-- x and y are coordinates or lenghts.
data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

-- Angle and distance (magnitude).
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)
