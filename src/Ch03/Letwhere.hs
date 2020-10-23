-- |
-- Module      :  Ch03.Letwhere
-- Description :  The offside Rule and Whitespace in an Expression
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

-- p. 65

module Ch03.Letwhere where

bar :: (Integer, Bool)  -- added signature to remove [-Wmissing-signatures] warning
                        -- removes [-Wtype-defaults] also
bar = let b = 2
          c = True
       in let a = b
           in (a, c)

foo :: Integer          -- added signature to remove [-Wmissing-signatures] warning
                        -- removes [-Wtype-defaults] also

foo = x
  where x = y
          where y = 2
