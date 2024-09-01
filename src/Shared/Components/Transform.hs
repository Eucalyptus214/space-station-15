{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Transform ( Transform(..) ) where

import Apecs
import Data.Vector

data Transform = Transform
  { position :: Vector3D
  , rotation :: Float
  } deriving Show
instance Component Transform where type Storage Transform = Map Transform
