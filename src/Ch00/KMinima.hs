-- |
-- Module      :  KMinima
-- Description :  minima example
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- example from Preface, p. xxiv
-- 
-- Note to run tests:
--
-- @
--      $ cabal new-run realh-test
-- @
--
-- or in @ghci@:
--
-- @
--      $ cabal new-repl realh-test
--      ghci> hspec Ch00.spec
-- @
--
-- Original source:
--
-- @
-- -- file: ch00/KMinima.hs
-- -- lines beginning with \"--\" are comments.
-- minima k xs = take k (sort xs)
-- @

module Ch00.KMinima where

import Data.List (sort)

-- |Takes @n@ minor elements from a list 
minima :: Ord a => Int -> [a] -> [a]
minima k xs = take k (sort xs)
