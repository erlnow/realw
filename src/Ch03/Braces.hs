-- |
-- Module      :  Ch03.Braces
-- Description :  The OffSide Rule is Not Mandatory
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Chapter 3: Defining Types, Streamlining Functions

module Ch03.Braces where

-- p. 66

-- added a signature to prevent [-Wmissing-signatures] warnings
-- adding a signature removes [-Wtype-defaults] also
bar :: Int
bar = let a = 1
          b = 2
          c = 3
       in a + b + c

foo :: Int
foo = let {a = 1; b = 2;
        c = 3}
       in a + b + c
