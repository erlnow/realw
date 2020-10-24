-- |
-- Module      :  Ch03.MeanList
-- Description :  Exercise 3 mean of a list
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 3 from Chaper 3: Defining Types, Streamlining Functions

module Ch03.MeanList where

-- *Exercise 3, p. 69
--
-- $ex3
--
-- Write a function that computes the mean of a list, i.e., the sum of all
-- elements in the list divided by its length. (You may need to use
-- 'fromIntegral' function to convert length of a list from an integer into a
-- floating-point number.
--
-- >>> mean [4.0, 5.0, 6.0, 3.0, 7.0]
-- 5.0
mean :: [Double] -> Double
mean xs = sum xs / fromIntegral (length xs)
