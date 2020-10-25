-- |
-- Module      :  Ch03.Height
-- Description :  Exercise 9
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 9 from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Height where

import Ch03.Tree        -- Tree definition

-- *Exercise 9, p. 7
--
-- $ex9
--
-- Using the binary tree type that we defined earlier in this chapter, write a
-- function that will determine the height of the tree. the height is the
-- largest number of hops from root to an @Empty@. For example, the tree
-- @Empty@ has height zero; @Node "x" Empty Empty@ has height one; @Node "x"
-- Empty (Node "y" Empty Empty)@ has height two; and so.

-- |Computes the height of a 'Tree'. The height is the largest number of
-- hops from root to an @Empty@.
--
-- For example:
--
-- >>> height Empty
-- 0
-- >>> height (Node "x" Empty Empty)
-- 1
-- >>> height (Node "x" Empty (Node "y" Empty Empty))
-- 2
height :: Tree a -> Int
height Empty = 0
height (Node _ l r) = 1 + max (height l) (height r)
