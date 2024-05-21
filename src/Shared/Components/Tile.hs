module Shared.Components.Tile( Tile(..)
                             ) where

import Data.Gas
import Apecs
data Tile = Tile { reactions :: [ReactionData]
                 , atmos :: AtmosComposition
                 , rads :: Float
                 , material :: Material
                 }
instance Component Tile where type Storage Tile = Map Tile
