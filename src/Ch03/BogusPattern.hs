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

-- This module throws severals warnings, fixed
-- pp. 67, 68

data Fruit = Apple | Orange

apple, orange :: String         -- [-Wmissing-signature]
apple  = "apple"
orange = "orange"

-- `whicFruit` has several warnings, for `apple` and `orange`
--  * [-Wname-shadowing] 
--  * [-Wunused-matches]
--  and orange -> Orange complaint [-Woverlappling-pattern]
--
-- wichFruit :: String -> Fruit
-- wichFruit f = case f of
--                apple  -> Apple
--                orange -> Orange

-- in equational style:
--
-- equational apple  = Apple
-- equational orange = Orange

-- corrected version
-- Added a signature but compaint about imcompleted patterns
-- The solution could be defining a default fruit or the use of Maybe
-- betterFruit :: [Char] -> Fruit
-- betterFruit f = case f of
--                   "apple"  -> Apple
--                   "orange" -> Orange

maybeFruit :: [Char] -> Maybe Fruit
maybeFruit f = case f of
                 "apple"   -> Just Apple
                 "orange"  -> Just Orange
                 _         -> Nothing
