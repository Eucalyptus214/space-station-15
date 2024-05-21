{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Examinable( Examinable(..)
                                   ) where

import Apecs

data Examinable = Examinable { name :: String
                             , desc :: String
                             }
                             deriving Show
instance Component Examinable where type Storage Examinable = Map Examinable
