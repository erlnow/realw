-- |
-- Module      :  Ch03.Guard
-- Description :  The case Expression
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Chapter 3: Defining Types, Streamlining Functions 

module Ch03.Guard where

-- from pp. 66,67
fromMaybe defval wrapped =
  case wrapped of
    Nothing    -> defval
    Just value -> value
