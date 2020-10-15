-- |
-- Module      :  Ch02.Add
-- Description :  Haskell source files, and writing simple functions
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 2: Types and Functions, p. 28
-- 
-- Original code:
--
-- @
-- -- file: ch03/add.hs
-- add a b = a + b
-- @
--
-- Note:
-- Added a signature to 'add' function to prevent warning [-Wmissing-signatures]

module Ch02.Add where

add :: Int -> Int -> Int
add a b = a + b
