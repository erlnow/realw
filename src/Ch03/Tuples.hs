{-# OPTIONS_GHC -Wno-unused-matches -Wno-incomplete-patterns #-}
-- |
-- Module      :  Ch03.Tuples
-- Description :  Pattern Matching
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Tuples where

-- added a GHC pragma to remove warnings -Wunused-matches -Wincomplete-patterns

-- Further adventures, p. 52

third :: (p, q, r) -> r
third (a, b, c) = c

-- added a GHC pragma to remove warnings -Wunused-matches -Wincomplete-patterns
complicated :: (Bool, a, [b], Integer) -> (a, [b])
complicated (True, a, x:xs, 5) = (a, xs)
