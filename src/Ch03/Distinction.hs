-- |
-- Module      :  Ch03.Distinction
-- Description :  Tuples, Algebraic Data Types, When To Use Each
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Distinction where

-- added types definitions to prevent warnings complaints about it.

-- Tuples, Algebraic Data Types, and When to Use Each, p. 46

a, b :: (String, String)

a = ("Porpoise", "Grey")
b = ("Table", "Oak")

data Cetacean = Cetacean String String
data Furniture = Furniture String String

c :: Cetacean
c = Cetacean "Porpoise" "Grey"

d :: Furniture
d = Furniture "Table" "Oak"
