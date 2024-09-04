-- this one's only used for Z levels
module Data.Linear.V3
  ( V3(..)
  , Data.Linear.V3.length
  , distance
  ) where

--import qualified Data.Linear.V2
--import qualified Data.Linear.P3
import Conversion
import Data.MonoTraversable

data V3 = V3 Float Float Float deriving (Show, Read, Eq, Ord)

instance Num V3 where
  (+) (V3 x y z) (V3 w v u) = V3 (x + w) (y + v) (z + u)
  (-) (V3 x y z) (V3 w v u) = V3 (x - w) (y - v) (z - u)
  (*) (V3 x y z) (V3 w v u) = V3 (x * w) (y * v) (z * u)
  signum (V3 x y z) = V3 (signum x) (signum y) (signum z)
  abs (V3 x y z) = V3 (abs x) (abs y) (abs z)

length :: V3
       -> Float
length (V3 x y z)
       = sqrt (x**2 + y**2 + z**2)

distance :: V3
         -> V3
         -> Float
distance (V3 x y z)
         (V3 w v u)
         = sqrt ((x**2 - w**2) + (y**2 - v**2) + (z**2 - u**2))
{-
instance Conversion V3 Data.Linear.V2.V2 where
  convert (V3 x y _) = Data.Linear.V2.V2 x y

instance Conversion V3 Data.P3.P3 where
  convert vec3D@(V3 x y z) = Data.Linear.P3.P3 (length vec3D) (atan2 y z) (atan2 (sqrt x^2 z^2) y)
-}
