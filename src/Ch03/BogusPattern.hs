-- |
-- Module      :  Ch03.BogusPattern
-- Description :  Common beginner mistakes with patterns
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Chapter 3: Defining Types, Streamlining Functions

module Ch03.BogusPattern where

-- pp. 67, 68

data Fruit = Apple | Orange

apple  = "apple"
orange = "orange"

wichFruit :: String -> Fruit
wichFruit f = case f of
                apple  -> Apple
                orange -> Orange

-- in equational style:
equational apple  = Apple
equational orange = Orange

-- corrected version
betterFruit f = case f of
                  "apple"  -> Apple
                  "orange" -> Orange
