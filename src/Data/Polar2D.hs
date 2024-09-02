module Data.Polar2D
  ( Polar2D(..)
  , Data.Polar2D.length
  , distance
  ) where

--import qualified Data.Vector3D
import Conversion

data Polar2D = Polar2D Float Float deriving (Show, Read, Eq, Ord)

instance Num Polar2D where
  (+) (Polar2D l a) (Polar2D l2 a2) = Polar2D (l + l2) (a + a2)

length :: Polar2D
       -> Float
length (Polar2D l _) = l

distance :: Polar2D
         -> Polar2D
         -> Float
distance (Polar2D l1 a1)
         (Polar2D l2 a2)
         = sqrt (l1 + l2 - 2 * l1 * l2 * cos (a1 - a2))
{-
instance Conversion Polar2D Data.Vector2D.Vector2D where
  convert (Polar2D l a) = Data.Vector2D.Vector2D (l * (cos a)) (l * (sin a))
-}
