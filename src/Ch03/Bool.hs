-- |
-- Module      :  Ch03.Bool
-- Description :  Algebraic data types
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Sreamlining Functions
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
--      ghci> hspec Ch03.BoolSpec.spec
-- @

module Ch03.Bool where

-- Algebraic Data Types, p. 44

data Bool = False | True
