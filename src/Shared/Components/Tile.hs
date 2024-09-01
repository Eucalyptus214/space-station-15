{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Tile ( Tile(..) ) where

import Apecs
import Data.Atmos
import Data.Material
import qualified Data.Map as M

data Tile = Tile
  { reactions :: [ReactionData]
  , atmos :: AtmosComposition
  , rads :: Float
  , material :: M.Map Material Float
  , temperature
  , volume :: Float
  , pressure :: Float
  } deriving Show
instance Component Tile where type Storage Tile = Map Tile
