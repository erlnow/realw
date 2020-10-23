-- |
-- Module      :  Ch03.GoodIndent
-- Description :  The Offside Rule and Whitespace in an Expression
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Chapter 3: Defining Types, Streamlining Functions

module Ch03.GoodIndent where

-- added signatures

-- p. 64

  firstGoodIndetantion, secondGoodIndentation :: Int

  -- It's fine for top-level declarations to start in any column...
  firstGoodIndetantion = 1

  -- ...provided all subsequents declarations do, too!
  secondGoodIndentation = 2
