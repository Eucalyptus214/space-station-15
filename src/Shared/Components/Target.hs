{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Target ( Target(..)
                                ) where

import Apecs
import Data.Vector

data Target = Target { position :: Vector3D
                     , relativeTo :: Entity
                     }
                     deriving Show
instance Component Target where type Storage Target = Map Target
