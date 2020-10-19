-- |
-- Module      :  Ch03.Tree
-- Description :  Recursive Types
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Tree where

data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

-- Similar definition in Java
-- class Tree<A>
-- {
--      A value;
--      Tree<A> left;
--      Tree<A> right;
--
--      public Tree(A v, Tree<A> l, Tree<A> r)
--      {
--              value = v
--              left  = l
--              right = r
--      }
-- }
--
-- class Example
-- {
--      static Tree<String> simpleTree()
--      {
--              return new Tree<String> (
--                "parent",
--                new Tree<String>("left leaf", null, null),
--                new Tree<String>("right leaf", null null));
--      }
-- }
simpleTree = Node "parent" (Node "Left child" Empty Empty)
                           (Node "Right child" Empty Empty)

-- Exercise 2, p. 60

data MTree a = N a
                    (Maybe (MTree a))
                    (Maybe (MTree a))
               deriving (Show)

simpleTree' = N "hola"
                Nothing
                (Just (N "caracola"
                      Nothing
                      (Just (N "sin"
                            Nothing
                            (Just (N "cola"
                                  Nothing
                                  Nothing))))))
