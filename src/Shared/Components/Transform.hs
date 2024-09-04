{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Transform ( Transform(..) ) where

import Apecs
import Data.Linear.V3

data Transform = Transform
  { position :: V3
  , rotation :: Float
  } deriving Show
instance Component Transform where type Storage Transform = Map Transform
