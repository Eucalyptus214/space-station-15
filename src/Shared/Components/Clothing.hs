module Shared.Components.Clothing( Clothing(..)
                                 ) where

import Apecs
import Data.Material
newtype Clothing = Clothing { materials :: [Material] }
instance Component Clothing where Storage Clothing = Map Clothing
