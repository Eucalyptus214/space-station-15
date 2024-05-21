{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Movement( Movement(..)
                                 ) where

import Apecs
import Data.MovementMode

data Movement = Movement { mode :: MovementMode
                         , speed :: Float
                         }
                         deriving Show
instance Component Movement where type Storage Movement = Map Movement
