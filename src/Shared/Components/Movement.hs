module Components.Shared.Movement( Movement(..)
                                 ) where

import Apecs
import Data.MovementMode
data Movement = Movement { mode :: MovementMode
                         , speed :: Float
                         }
instance Component Movement where Storage Movement = Map Movement
