-- Execute: I should ideally split this into 3 files: Data.Vector2D, Data.Vector3D, Data.Polar2D
module Data.Vector
  ( Vector2D(..)
  , Vector3D(..)
  , Polar2D(..)
  , vec2Dlength
  , vec2Ddistance
  , polarToVector2D
  , polarToVector3D
  , vector2DToPolar
  , vector2DToVector3D
  , vector3DToPolar
  , vector3DToVector2D
  ) where

data Vector2D = Vector2D Float Float deriving (Show, Read, Eq, Ord)
data Vector3D = Vector3D Float Float Float deriving (Show, Read, Eq, Ord)
data Polar2D = Polar2D Float Float deriving (Show, Read, Eq, Ord)

vec2Dlength :: Vector2D -> Float
vec2Dlength (Vector2D x y) = sqrt ((x^2) + (y^2))

vec2Ddistance :: Vector2D
              -> Vector2D
              -> Float
vec2Ddistance (Vector2D x y)
              (Vector2D z w)
              = sqrt (((x^2) - (z^2)) + ((y^2) - (w^2)))

polarToVector2D :: Polar2D -> Vector2D
polarToVector2D (Polar2D r a) = Vector2D (cos a * r) (sin a * r)

polarToVector3D :: Polar2D -> Vector3D
polarToVector3D (Polar2D r a) = Vector3D (cos a * r) (sin a * r) 0

vector2DToPolar :: Vector2D -> Polar2D
vector2DToPolar vec2D@(Vector2D x y) = Polar2D (vec2Dlength vec2D) (tan (y / x))

vector2DToVector3D :: Vector2D -> Vector3D
vector2DToVector3D (Vector2D x y) = Vector3D x y 0

vector3DToVector2D :: Vector3D -> Vector2D
vector3DToVector2D (Vector3D x y _) = Vector2D x y

vector3DToPolar :: Vector3D -> Polar2D
vector3DToPolar vec3D@(Vector3D x y _) = Polar2D (vec2Dlength $ vector3DToVector2D vec3D ) (tan (y / x))
