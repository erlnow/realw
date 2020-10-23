{-# OPTIONS_GHC -Wno-name-shadowing -Wno-unused-matches #-}
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

-- aded GHC pragma to remove warns -Wname-shadowing -Wunused-matches

-- Shadowing, p. 62
foo :: Integer                  -- added to remove [-Wmissing-signatures] and [-Wtype-defaults]
foo = let a = 1
          in let b = 2
              in a + b

bar :: ([Char], Integer)        -- added to remove [-Wmissing-signatures] and [-Wtype-defaults]
bar = let x = 1
          in ((let x = "foo" in x), x)  -- Complaints about [-Wname-shadowing]

-- this function can be any type
quux :: t -> [Char]                     -- Complaints [-Wname-shadowing] and [-Wunused-matches]
quux a = let a = "foo"                  
          in a ++ "eek!"
