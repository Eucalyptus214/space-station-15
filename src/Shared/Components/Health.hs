{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Health( Health(..)
                               ) where

import Apecs
import Data.DamageType
import qualified Data.Map as M

data Health = Health { maxHealth :: Float
                     , damage :: M.Map DamageType Float
                     }
                     deriving Show
instance Component Health where type Storage Health = Map Health
