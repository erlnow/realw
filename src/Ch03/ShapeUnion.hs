-- |
-- Module      :  Ch03.ShapeUnion
-- Description :  Analogues to Algebraic Data Types in Other Languages
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Example from Chapter 3: Defining Types, Streamlining Functions

module Ch03.ShapeUnion where

-- The discriminated union, p. 49
-- 
-- enum shape_type {
--      shape_circle,
--      shape_poly,
-- };
--
-- struct circle {
--      struct vector centre;
--      float radius;
-- };
--
-- struct poly {
--      size_t num_vertices;
--      struct verctor *vertices;
-- };
--
-- struct shape {
--      enum shape_type type;
--      union {
--              struct circle circle;
--              struct poly poly
--      } shape;
-- };
--
-- Equivalent code in Haskell:

type Vector = (Double, Double)

data Shape = Circle Vector Double
           | Poly [Vector]
