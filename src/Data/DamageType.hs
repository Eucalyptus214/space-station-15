module Data.DamageType ( DamageType(..) ) where

-- None here is simply just used as an identity
data DamageType = None | Heat | Shock | Cold | Caustic | Blunt | Slash | Piercing | Biological | Asphyxiation | Poison | Radiation | Bloodloss | Cellular deriving (Eq, Read, Show, Ord)
