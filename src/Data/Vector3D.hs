-- this one's only used for Z levels
module Data.Vector3D
  ( Vector3D(..)
  , length
  , distance
  ) where

--import qualified Data.Vector2D
--import qualified Data.Polar3D
import Conversion
import Data.MonoTraversable

data Vector3D = Vector3D Float Float Float deriving (Show, Read)

length :: Vector3D
       -> Float
length (Vector3D x y z)
       = sqrt (x^2 + y^2 + z^2)

distance :: Vector3D
         -> Vector3D
         -> Float
distance (Vector3D x y z)
         (Vector3D w v u)
         = sqrt ((x^2 - w^2) + (y^2 - v^2) + (z^2 - u^2))
{-
instance Conversion Vector3D Data.Vector2D.Vector2D where
  convert (Vector3D x y _) = Data.Vector2D.Vector2D x y

instance Conversion Vector3D Data.Polar3D.Polar3D where
  convert vec3D@(Vector3D x y z) = Data.Polar3D.Polar3D (length vec3D) (atan2 y z) (atan2 (sqrt x^2 z^2) y)
-}
instance MonoFunctor Vector3D where
  omap f (Vector3D x y z) = Vector3D (f x) (f y) (f z)
