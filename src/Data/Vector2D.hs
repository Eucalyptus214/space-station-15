module Data.Vector2D
  ( Vector2D(..)
  , length
  , distance
  ) where

--import qualified Data.Vector3D
--import qualified Data.Polar2D
import Conversion
import Data.MonoTraversable

data Vector2D = Vector2D Float Float deriving (Show, Read)

length :: Vector2D -> Float
length (Vector2D x y) = sqrt ((x^2) + (y^2))

distance :: Vector2D
         -> Vector2D
         -> Float
distance (Vector2D x y)
         (Vector2D z w)
         = sqrt (((x^2) - (z^2)) + ((y^2) - (w^2)))
{-
instance Conversion Vector2D Data.Vector3D.Vector3D where
  convert (Vector2D x y) = Data.Vector3D.Vector3D x y 0

instance Conversion Vector2D Data.Polar2D.Polar2D where
  convert vec2D@(Vector2D x y) = Data.Polar2D.Polar2D (length vec2D) (atan2 x y)
-}
instance MonoFunctor Vector2D where
  omap f (Vector2D x y) = Vector2D (f x) (f y)
