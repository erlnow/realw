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

-- Note:
--      Added signatures to functions to remove warning:
--
--      warning: [-Wmissing-signatures]
--      Top-lever binding with no type signature:
--        niceDrop :: (Ord t, Num t) => t -> [a] -> [a]

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
                 then xs
                 else myDrop (n-1) (tail xs)

-- from chapter 3, p. 69
niceDrop :: Int -> [a] -> [a]
niceDrop n xs | n <= 0 = xs
niceDrop _ []          = []
niceDrop n (_:xs)      = niceDrop (n-1) xs

