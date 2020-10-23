-- |
-- Module      :  Ch03.ListADT
-- Description :  Recursive Types
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Cahpter 3: Defining Types, Streamlining Functions

module Ch03.ListADT where

-- Recursive type, p. 58
data List a = Cons a (List a)
            | Nil
            deriving (Show)

fromList :: [a] -> List a       -- added signature to remove [-Wmissing-signatures]
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

-- Exercise 1, p. 60
-- Write the converse of @fromList@ for the @List@ type: a function
-- that takes a @List a@ and generated @[a]@.
toList :: List a -> [a]       -- added signature to remove [-Wmissing-signatures]
toList (Cons x xs) = x : toList xs
toList Nil         = []
