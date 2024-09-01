module Data.StatusEffect ( StatusEffect(..) ) where


import qualified Data.Map
-- import Data.Disease
import Data.DamageType

-- | Diseased Disease
data StatusEffect = PassiveDamage DamageType
                    deriving (Show, Read, Eq)
