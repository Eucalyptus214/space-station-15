module Client.Components.Sprite( Sprite(..)
                               ) where

import Apecs
data Sprite = Sprite { path :: String
                     , color :: [Int, Int, Int]
                     }
instance Component Sprite where Storage Sprite = Map Sprite
