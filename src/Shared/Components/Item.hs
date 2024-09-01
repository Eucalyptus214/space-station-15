{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Item ( Item(..) ) where

import Apecs

newtype Item = Item { durability :: Float } deriving Show
instance Component Item where type Storage Item = Map Item
