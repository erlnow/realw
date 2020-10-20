-- |
-- Module      :  Ch03.MySecond
-- Description :  Reportin Errors
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining functions

module Ch03.MySecond where

-- Reporting errors, p. 60

mySecond :: [a] -> a
mySecond xs = if null (tail xs)
                 then error "list too short"
                 else head (tail xs)

-- A More Controled Approach, p. 61

safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                   then Nothing
                   else Just (head (tail xs))

tidySecond :: [a] -> Maybe a
tidySecond (_:x:_) = Just x
tidySecond _       = Nothing
