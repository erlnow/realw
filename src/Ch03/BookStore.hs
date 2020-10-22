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

myInfo :: BookInfo
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

-- [-Wunused-matches] and [-Wmissing-signatures]
-- `id` complaints [-Wname-shadowing]
-- bookID      (Book id title authors) = id
-- bookTitle   (Book id title authors) = title
-- bookAuthors (Book id title authors) = authors

-- The wild card pattern, p. 53

-- added signatures and id changed to idb  
nicerID :: BookInfo -> Int
nicerID      (Book idb _ _) = idb

nicerTitle :: BookInfo -> String
nicerTitle   (Book _ title _) = title

nicerAuthors :: BookInfo -> [String]
nicerAuthors (Book _ _ authors) = authors

-- Record Syntax, p. 55

-- For each of the fields, Haskell creates an accesor. For example:
-- @customerID :: Customer -> CustomerID@

data Customer = Customer { customerID :: CustomerID
                         , customerName    :: String
                         , customerAddress :: Address
                         } deriving (Show)

-- We can use traditional syntax to create a object
customer1, customer2 :: Customer

customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct",
             "Milpitas, CA 95134",
             "USA"]

-- Or Record syntax
customer2 = Customer { customerID = 271828
                     , customerAddress = ["1048576 Disk Drive",
                                          "Milpitas, CA 95134",
                                          "USA"]
                     , customerName = "Jane Q. Citzen"
                     }
