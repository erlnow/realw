-- |
-- Module      :  Ch03.Palindrome
-- Description :  Exercise 3 - Palindrome
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise from Chapter 3: Defining Types, Streamlining Functions

module Ch03.Palindrome where

-- *Exercise 4, p. 69
--
-- $ex4
--
-- Turn a list into a palindrome; i.e., it should read the same both 
-- backward and foreward. For example, given the list [1,2,3], your
-- function should return [1,2,3,3,2,1]

-- |turn a list into a palindrome.
--
-- Example:
--
-- >>> makePalindrome [1,2,3]
-- [1,2,3,3,2,1]
makePalindrome :: [a] -> [a]
makePalindrome xs = xs ++ reverse xs

-- *Exercise 5, p. 70
--
-- $ex5
--
-- Write a function that determines whether its inputs list is a palindrome.
--
-- Examples:
--
-- >>> isPalindrome (makePalindrome [1,2,3])
-- True
--
-- >>> isPalindrome "level"
-- True
isPalindrome :: Eq a => [a] -> Bool
isPalindrome []     = True
isPalindrome [_]    = True
isPalindrome (x:xs) = x == x' && (isPalindrome xs')
                      where x'  = last xs
                            xs' = init xs
