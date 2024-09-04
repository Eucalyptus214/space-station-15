module Data.Linear.P2
  ( P2(..)
  , Data.Linear.P2.length
  , distance
  ) where

--import qualified Data.Linear.V3
import Conversion

data P2 = P2 Float Float deriving (Show, Read, Eq, Ord)

instance Num P2 where
  (+) (P2 l a) (P2 l2 a2) = P2 (l + l2) (a + a2)

length :: P2
       -> Float
length (P2 l _) = l

distance :: P2
         -> P2
         -> Float
distance (P2 l1 a1)
         (P2 l2 a2)
         = sqrt (l1 + l2 - 2 * l1 * l2 * cos (a1 - a2))
{-
instance Conversion P2 Data.Linear.V2.V2 where
  convert (P2 l a) = Data.Linear.V2.V2 (l * (cos a)) (l * (sin a))
-}
