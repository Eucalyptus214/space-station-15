module Data.DamageType( DamageType(..)
                      , defaultResistances
                      ) where

import qualified Data.Map as M

data DamageType = Heat | Shock | Cold | Caustic | Blunt | Slash | Piercing | Biological | Asphyxiation | Poison | Radiation | Bloodloss | Cellular
                  deriving (Eq, Read, Show)

-- precentages
defaultResistances :: M.Map DamageType Float
defaultResistances = [ (Heat, 0)
                     , (Shock, 0)
                     , (Cold, 0)
                     , (Caustic, 0)
                     , (Blunt, 0)
                     , (Slash, 0)
                     , (Piercing, 0)
                     , (Biological, 0)
                     , (Asphyxiation, 0)
                     , (Poison, 0)
                     , (Radiation, 0)
                     , (Bloodloss, 0)
                     , (Cellular, 0)
                     ]

