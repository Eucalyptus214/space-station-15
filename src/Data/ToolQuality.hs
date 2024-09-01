module Data.ToolQuality
  ( ToolQuality(..)
  , ToolQualities
  ) where

import qualified Data.Map

data ToolQuality = Screwing | Anchoring | Pulsing | Cutting | Butchering | Welding deriving (Show, Read, Eq)
type ToolQualities = Data.Map.Map ToolQuality Float
