-- |
-- Module      :  Ch03.Lendings
-- Description :  Doubleroducing Local Variables
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Lendings where

-- Doubleroducing Local Variables, p. 62

lend :: Double -> Double -> Maybe Double
lend amount balance = let reserve = 100
                          newBalance = balance - amount
                       in if balance < reserve
                             then Nothing
                             else Just newBalance

lend2 :: Double -> Double -> Maybe Double
lend2 amount balance = if amount < reserve * 0.5
                          then Just newBalance
                          else Nothing
                            where reserve = 100
                                  newBalance = balance - amount

-- Conditional Evaluation With Guards, p. 69
lend3 :: Double -> Double -> Maybe Double
lend3 amount balance
  | amount <= 0            = Nothing
  | amount > reserve * 0.5 = Nothing
  | otherwise              = Just newBalance
  where reserve    = 100
        newBalance = balance - amount
