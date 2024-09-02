module Data.Vector2D
  ( Vector2D(..)
  , Data.Vector2D.length
  , distance
  ) where

--import qualified Data.Vector3D
--import qualified Data.Polar2D
import Conversion
import Data.MonoTraversable

data Vector2D = Vector2D Float Float deriving (Show, Read, Eq, Ord)

instance Num Vector2D where
  (+) (Vector2D x y) (Vector2D z w) = Vector2D (x + z) (y + w)
  (-) (Vector2D x y) (Vector2D z w) = Vector2D (x - z) (y - w)
  (*) (Vector2D x y) (Vector2D z w) = Vector2D (x * z) (y * w)
  signum (Vector2D x y) = Vector2D (signum x) (signum y)
  abs (Vector2D x y) = Vector2D (abs x) (abs y)

length :: Vector2D -> Float
length (Vector2D x y) = sqrt ((x**2) + (y**2))

distance :: Vector2D
         -> Vector2D
         -> Float
distance (Vector2D x y)
         (Vector2D z w)
         = sqrt (((x**2) - (z**2)) + ((y**2) - (w**2)))
{-
instance Conversion Vector2D Data.Vector3D.Vector3D where
  convert (Vector2D x y) = Data.Vector3D.Vector3D x y 0

instance Conversion Vector2D Data.Polar2D.Polar2D where
  convert vec2D@(Vector2D x y) = Data.Polar2D.Polar2D (length vec2D) (atan2 x y)
-}
