-- |
-- Module      :  Ch03.BadTree
-- Description :  Incorrectly Trying to Compare for Equality
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Chapter 3: Defining Types, Streamlining Functions

module Ch03.BadTree where

import Ch03.Tree

-- p. 68
-- No compile, we cannot place a variable in multiple positions
-- to express that are the same values. Note: Use guards.
-- bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
-- bad_nodesAreSame _            _            = Nothing

nodesAreSame (Node a _ _) (Node b _ _)
  | a == b = Just a
nodesAreSame _ _ = Nothing
