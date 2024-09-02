-- this one's only used for Z levels
module Data.Vector3D
  ( Vector3D(..)
  , Data.Vector3D.length
  , distance
  ) where

--import qualified Data.Vector2D
--import qualified Data.Polar3D
import Conversion
import Data.MonoTraversable

data Vector3D = Vector3D Float Float Float deriving (Show, Read, Eq, Ord)

instance Num Vector3D where
  (+) (Vector3D x y z) (Vector3D w v u) = Vector3D (x + w) (y + v) (z + u)
  (-) (Vector3D x y z) (Vector3D w v u) = Vector3D (x - w) (y - v) (z - u)
  (*) (Vector3D x y z) (Vector3D w v u) = Vector3D (x * w) (y * v) (z * u)
  signum (Vector3D x y z) = Vector3D (signum x) (signum y) (signum z)
  abs (Vector3D x y z) = Vector3D (abs x) (abs y) (abs z)

length :: Vector3D
       -> Float
length (Vector3D x y z)
       = sqrt (x**2 + y**2 + z**2)

distance :: Vector3D
         -> Vector3D
         -> Float
distance (Vector3D x y z)
         (Vector3D w v u)
         = sqrt ((x**2 - w**2) + (y**2 - v**2) + (z**2 - u**2))
{-
instance Conversion Vector3D Data.Vector2D.Vector2D where
  convert (Vector3D x y _) = Data.Vector2D.Vector2D x y

instance Conversion Vector3D Data.Polar3D.Polar3D where
  convert vec3D@(Vector3D x y z) = Data.Polar3D.Polar3D (length vec3D) (atan2 y z) (atan2 (sqrt x^2 z^2) y)
-}
