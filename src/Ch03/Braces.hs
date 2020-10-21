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

bar = let a = 1
          b = 2
          c = 3
       in a + b + c

foo = let {a = 1; b = 2;
        c = 3}
       in a + b + c
