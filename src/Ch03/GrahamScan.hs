-- |
-- Module      :  Ch03.GrahamScan
-- Description :  Exercise 10
-- Copyright   :  erlnow 2020 - 2030
-- License     :  BSD3
--
-- Maintainer  :  erlestau@gmail.com
-- Stability   :  experimental
-- Portability :  unknown
--
-- Exercise 10 from Chapter 3: Defining Types, Streamlining Functions

module Ch03.GrahamScan where

-- *Exercise 10, p. 70
--
-- $ex10
--
-- Consider three two-dimensional points, \(a\), \(b\), \(c\). If we took at
-- the angle formed bye the line segment from \(a\) to \(b\) and the line
-- segment from \(b\) to \(c\), it turns /left/, turns /right/, or forms a
-- /straight/ line. Define 'Direction' data type that lets you represent these
-- possibility

-- |A point in two dimensional /Euclidean plane/
type Point = ( Double, Double)

-- |Given three points: \(a, b, c\) the angle formed for the segments
-- \(\overline{ab},\overline{bc}\) can be negative or turn /right/ or clockwise,
-- positive or turn /left/ or anti-clockwise or zero or /straight/ line.
data Direction =
      TurnLeft              -- ^turn left, or positive angle or anti-clockwise turn
    | TurnRight             -- ^turn right, or negative angle or clockwise turn
    | GoStraight            -- ^angle zero or straight line
    deriving (Eq, Show)


-- *Exercise 11, p. 70
--
-- $ex11
--
-- Consider a function that calculates the turn made by three two-dimensional
-- points and returns a 'Direction'.

-- **Determining the direction of "turn" of three points
--
-- $xProd
--
--   [@source@]: <https://en.wikipedia.org/wiki/Graham_scan>
--
-- Again, determining whether three points constitute a "left turn" or a "right
-- turn" does not require computing the actual angle between the two line
-- segments, and can be actually be achieved with simple arithmetic only. For
-- three points \(p_1 = (x_1,y_1)\), \(p_2 = (x_2,y_2)\) and
-- \(p_3 = (x_3,y_3)\), compute the z-coordinate of the [cross
-- product](https://en.wikipedia.org/wiki/Cross_product) of the two
-- [vectors](https://en.wikipedia.org/wiki/Vector_(geometric\))
-- \(\overrightarrow{P_1 P_2}\) and \(\overrightarrow{P_1 P_3}\), which is given
-- by the expression \((x_2-x_1)(y_3-y_1)-(y_2-y_1)(x_3-x_1)\).  If the result
-- is \(0\), the points are collinear; if it is positive, the three points
-- constitute a "left turn" or counter-clockwise orientation, otherwise a
-- "right turn" or clockwise orientation (for counter-clockwise numbered
-- points)

-- |Calculates the turn made by two-dimensional points. Return a 'Direction'.
turn :: Point -> Point -> Point -> Direction
turn (x1,y1) (x2,y2) (x3,y3) =
  case compare crossProduct 0 of
    GT -> TurnLeft
    EQ -> GoStraight
    LT -> TurnRight
  where
    crossProduct = (x2-x1)*(y3-y1) - (y2-y1)*(x3-x1)

-- Calculates the turn made by two-dimensional points. Returns a 'Direction'.
-- Alternate algorithm.
-- Doesn't work
-- turn' :: Point -> Point -> Point -> Direction
-- turn' a b c = case compare (slope a b) (slope a c) of
--                GT -> TurnLeft
--                EQ -> GoStraight
--                LT -> TurnRight


-- Calculates the /slope/ of segment defined by two points. The slope of two
-- points with the same y coordinate is infinite.
-- slope :: Point -> Point -> Double
-- slope (x,y) (x',y') = (y - y') / (x - x')

-- *Exercise 12, p. 70
--
-- $ex12
--
-- Define a function that takes a list of two-dimensional points and computes
-- the direction of each successive triple. Given a list of points
-- @[a,b,c,d,e]@, it should begin by computing the turn made by @[a,b,c]@, then
-- the turn made by @[b,c,d]@, then @[c,d,e]@. Your function should return a
-- list of 'Direction'.

-- |Given a list of 'Point's return a list of 'Directions' of each successive
-- triplet in the list of points.
points2Directions :: [Point] -> [Direction]
points2Directions (a:b:c:ps) = (turn a b c) : points2Directions ps
points2Directions _ = []

-- *Exercise 13, p. 70
--
-- $ex13
--
-- Using the code from preceding three exercises, implement /Graham's scan/ 
-- algorithm for the /convex hull/ of a set of 2D points. You can find good
-- description of what convex hull (<https://en.wikipedia.org/wiki/Convex_hull>)
-- is, and how the Graham scan algorithm
-- (<https://en.wikipedia.org/wiki/Graham_scan>) should work, on Wikipedia
-- (<https://www.wikipedia.org>).

-- |Graham scan algorithm for the convex hull of a set of 2D points.
graham :: [Point] -> [Point]
graham = undefined
