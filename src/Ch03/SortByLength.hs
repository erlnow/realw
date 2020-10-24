-- |
-- Module      :  Ch03.SortByLength
-- Description :  Exercise 6
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 6 from Chapter 3: Defining Types, Streamlining Functions

module Ch03.SortByLength where

import Data.List (sortBy)

-- *Exercise 6, p. 70
--
-- $ex6
--
-- Create a function that sorts a list of lists based on the length of each
-- sublist. (You may want to look at the 'sortBy' function from "Data.List"
-- module.)

-- |Sort a list of lists by the length of each sublist.
--
-- Example:
--
-- >>> sortByLength [[1,2], [3,4,5], [6], [7,8],[9..15]]
-- [[6],[1,2],[7,8],[3,4,5],[9,10,11,12,13,14,15]]
sortByLength :: [[a]] -> [[a]]
sortByLength xss = sortBy byLength xss
  where byLength xs ys = compare (length xs) (length ys)
