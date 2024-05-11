module Client.Components.Mob(Mob) where

import Apecs
import Client.Components.Wearable

dataMob = Mob { name :: String
              , health :: Float
              , maxHealth :: Float
              , wearing :: [Wearable] }
instance Component Mob where type Storage Mob = Map Mob
