{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Mind( Mind(..)
                             ) where

import Apecs

newtype Mind = Mind { owner :: String } deriving Show
instance Component Mind where type Storage Mind = Map Mind
