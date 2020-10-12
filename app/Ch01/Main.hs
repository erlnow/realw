-- |
-- Module      :  Ch01.WC
-- Description :  like `wc` utility 
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- A simple program. Example from Chapter 1 __Getting Started__, p. 15
-- 
-- Original source:
--
-- @
-- file: ch01/WC.hs
-- lines beginning wit "--" are comments.
--
-- main = interat wordCount
--     where wordCount input = show (length (lines input) ++ "\n"
-- @
--
-- To run the program:
--
-- @
--   $ cabal v2-run :WC < data/quux.txt
--   7
-- @

module Main (main) where

main :: IO()
main = interact wordCount
  where wordCount input = show (length (lines input)) ++ "\n"
