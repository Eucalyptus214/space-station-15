module Data.Linear.V2
  ( V2(..)
  , Data.Linear.V2.length
  , distance
  ) where

--import qualified Data.Linear.V3
--import qualified Data.Linear.V2
import Conversion
import Data.MonoTraversable

data V2 = V2 Float Float deriving (Show, Read, Eq, Ord)

instance Num V2 where
  (+) (V2 x y) (V2 z w) = V2 (x + z) (y + w)
  (-) (V2 x y) (V2 z w) = V2 (x - z) (y - w)
  (*) (V2 x y) (V2 z w) = V2 (x * z) (y * w)
  signum (V2 x y) = V2 (signum x) (signum y)
  abs (V2 x y) = V2 (abs x) (abs y)

length :: V2 -> Float
length (V2 x y) = sqrt ((x**2) + (y**2))

distance :: V2
         -> V2
         -> Float
distance (V2 x y)
         (V2 z w)
         = sqrt (((x**2) - (z**2)) + ((y**2) - (w**2)))
{-
instance Conversion V2 Data.Linear.V3.V3 where
  convert (V2 x y) = Data.Linear.V3.V3 x y 0

instance Conversion V2 Data.Linear.P2.P2 where
  convert vec2D@(V2 x y) = Data.P2.P2 (length vec2D) (atan2 x y)
-}
