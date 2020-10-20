-- |
-- Module      :  Ch03.NestedLets
-- Description :  Shadowing
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.NestedLets where

-- Shadowing, p. 62

foo = let a = 1
          in let b = 2
              in a + b

bar = let x = 1
          in ((let x = "foo" in x), x)

-- this function can be any type
-- @quux :: t -> [Char]
quux a = let a = "foo"
          in a ++ "eek!"
