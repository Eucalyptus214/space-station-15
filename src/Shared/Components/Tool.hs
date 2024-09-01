{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Tool ( Tool(..) ) where

import Apecs
import Data.ToolQuality

data Tool = Tool { qualities :: ToolQualities } deriving Show
instance Component Tool where type Storage Tool = Map Tool
