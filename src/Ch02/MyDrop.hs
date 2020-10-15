-- |
-- Module      :  Ch02.MyDrop
-- Description :  Conditional Evaluation
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 2: Types and functions, p. 30

module Ch02.MyDrop where

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
                 then xs
                 else myDrop (n-1) (tail xs)
