{-# LANGUAGE TypeFamilies                #-}

module Shared.Components.ID ( ID(..) ) where

import Apecs
import Data.Access

data ID = ID
  { capacity :: Int
  , access :: [Access]
  } deriving Show
instance Component ID where type Storage ID = Map ID
