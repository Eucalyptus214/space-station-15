module Data.DamageType( DamageType(..)
                      ) where

data DamageType = Heat | Shock | Cold | Caustic | Blunt | Slash | Piercing | Biological | Asphyxiation | Poison | Radiation | Bloodloss | Cellular
                  deriving (Eq, Read, Show)
