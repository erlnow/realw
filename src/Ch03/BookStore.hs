-- |
-- Module      :  Ch03.BookStore
-- Description :  Defining a new data type
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.BookStore where

-- Defining a New Data Type, p. 41

data BookInfo = Book Int String [String]
                deriving (Show)

-- Defining a New Data Type, p. 42

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming"
              ["Richard Bird", "Oege de Moor"]

-- Naming Types and Values, p. 43

data BookReview = BookReview BookInfo CustomerID String

-- Type Synonyms, p. 44

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

-- Algebraic data types, p. 45

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                 deriving (Show)

-- Analogues to Algrebraic Data Types in Other Languages, p. 47
--
-- In C or C++ our BookInfo could be a structure:
--
-- stuct book_info {
--      int id;
--      char *name;
--      char **authors;
--  };

-- Pattern Matching, p. 53
-- Further Adventures
