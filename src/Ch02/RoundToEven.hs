-- |
-- Module      :  RoundToEven
-- Description :  Understanding Evaluation by example
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 2: Types and functions, p. 32

module Ch02.RoundToEven where

isOdd :: Int -> Bool
isOdd n = mod n 2 == 1
