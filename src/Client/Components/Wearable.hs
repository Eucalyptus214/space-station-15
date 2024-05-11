module Client.Components.Wearable(Wearable) where

import Data.DamageType
import Apecs

type Precentage = Float
data Wearable = Wearable { name :: String
                         , desc :: String
                         , sprite :: String
                         , resistances :: [(DamageType, Precentage)] }
instance Component Wearable where type Storage Wearable = Map Wearable
