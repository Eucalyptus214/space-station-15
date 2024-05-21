module Data.Vector( Vector2D(..)
                  , Vector3D(..)
                  , Polar2D(..)
                  , polarToVector2D
                  , polarToVector3D
                  , vector2DToPolar
                  , vector3DToPolar
                  ) where

import Foundation.Math.Trigonometry

data Vector2D = Vector2D Float Float deriving (Show, Read, Eq, Ord)
data Vector3D = Vector3D Float Float Float deriving (Show, Read, Eq, Ord)
data Polar2D = Polar2D Float Float deriving (Show, Read, Eq, Ord)

polarToVector2D :: Polar2D -> Vector2D
polarToVector2D (Polar2D r a) = Vector2D $ cos a * r $ sin a * r

polarToVector3D :: Polar2D -> Vector3D
polarToVector3D (Polar2D r a) = Vector3D $ cos a * r $ sin a * r $ 0

vector2DToPolar :: Vector2D -> Polar2D
vector2DToPolar (Vector2D x y) = Polar2D $ sqrt (x^2 + y^2) $ tan (y / x)

vector3DToPolar :: Vector3D -> Polar2D
vector3DToPolar (Vector3D x y _) = Polar2D $ sqrt (x^2 + y^2) $ tan (y / x)
