-- |
-- Module      :  Ch02.ShortCircuit
-- Description :  Short-circuiting for free
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 2: Types and funcions, p. 36

module Ch02.ShortCircuit where

-- |function that short-circuits:
--
-- If we write a expression such as @newOr True (length [1..] > 0), it
-- will not evaluate the second argument
--
-- >>> newOr True (length [1..] > 0)
-- True
newOr :: Bool -> Bool -> Bool
newOr a b = if a then a else b


