-- |
-- Module      :  Ch03.Nullable
-- Description :  Parameterized Types
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining functions

module Ch03.Nullable where

import Prelude hiding (Just)

-- Parameterized Types, p. 57

data Maybe a = Just a
             | Nothing

someBool = Just True
someString = Just "something"

wrapped = Just (Just "wrapped")
