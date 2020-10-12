-- |
-- Module      :  Ch00Spec
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Uses of functions in module 'Ch00'
-- 
-- Note to run tests:
--
-- @
--      $ cabal new-run spec
-- @
--
-- or in @ghci@:
--
-- @
--      $ cabal new-repl spec
--      ghci> hspec Ch00Spec.spec
-- @

module Ch00Spec (spec) where

import qualified Ch00.KMinima
import Test.Hspec

spec :: Spec
spec = do
  it "Ch00.KMinima.minima" $ do
    Ch00.KMinima.minima 3 [7,2,4,6,9] `shouldBe` ([2,4,6] :: [Int])


