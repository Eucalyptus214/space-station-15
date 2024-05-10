module Data.Wearable( Wearable(..)
                    ) where

import Data.DamageType

type Precentage = Float
data Wearable = Wearable { name :: String
                         , desc :: String
                         , sprite :: String
                         , resistances :: [(DamageType, Precentage)]}
