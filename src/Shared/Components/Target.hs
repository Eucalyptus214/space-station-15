module Components.Shared.Target ( Target(..)
                                ) where

import Apecs
import Data.Vector
data Target = Target { position :: Vector3D
                     , relativeTo :: Entity
                     }
instance Component Target where Storage Target = Map Target
