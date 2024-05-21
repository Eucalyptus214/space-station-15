module Shared.Components.Examinable( Examinable(..)
                                   ) where

import Apecs
data Examinable = Examinable { name :: String
                             , desc :: String
                             }
instance Component Examinable where Storage Examinable = Map Examinable
