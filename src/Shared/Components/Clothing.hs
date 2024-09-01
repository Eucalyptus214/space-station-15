{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Clothing ( Clothing(..) ) where

import Apecs
import Data.Material
import qualified Data.Map as M

data Clothing = Clothing
  { materials :: M.Map Material Float
  , layer :: Int
  } deriving Show
instance Component Clothing where type Storage Clothing = Map Clothing
