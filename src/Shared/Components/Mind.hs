{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Mind ( Mind(..) ) where

import Apecs
import Data.Player

newtype Mind = Mind { owner :: Player } deriving Show
instance Component Mind where type Storage Mind = Map Mind
