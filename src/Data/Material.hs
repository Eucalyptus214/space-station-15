module Data.Material ( Material(..)
                     , materialResistances
                     ) where

data Material = Steel | Iron | Cobalt | Titanium | Lithium | Carbon | Graphite | Tungsten | Paper | Cloth | Kevlar | Glass | Plastic | Uranium

import Data.DamageType
import qualified Data.Map as M

materialResistances :: M.Map Material (M.Map DamageType Float)
materialResistances = [ (Steel, [(Piercing, 70), (Shock, 5), (Blunt, 95), (Slash, 70), (Heat, 60), (Radiation, 100)])
                      , (Tungsten, [(Piercing, 50), (Shock, 5), (Blunt, 85), (Slash, 65), (Heat, 100), (Radiation, 70)])
                      , (Iron, [(Piercing, 60), (Shock, 0), (Blunt, 90), (Slash, 70), (Heat, 30), (Radiation, 80)])
                      , (Titanium, [(Piercing, 90), (Shock, 10), (Blunt, 90), (Slash, 90), (Heat, 70), (Radiation, 60)])
                      , (Lithium, [(Piercing, 35), (Shock, 15), (Blunt, 40), (Slash, 15), (Heat, 80), (Radiation, 25)])
                      , (Carbon, [(Piercing, 50), (Shock, 80), (Blunt, 50), (Slash, 50), (Heat, 5), (Radiation, 25)])
                      , (Graphite, [(Piercing, 70), (Shock, 80), (Blunt, 70), (Slash, 70), (Heat, 15), (Radiation, 30)])
                      , (Kevlar, [(Piercing, 90), (Shock, 100), (Blunt, 90), (Slash, 70), (Heat, 70), (Radiation, 80)])
                      , (Paper, [(Piercing, 5), (Shock, 100), (Blunt, 5), (Slash, 5), (Heat, 0), (Radiation, 20)])
                      , (Cloth, [(Piercing, 20), (Shock, 20), (Blunt, 30), (Slash, 20), (Heat, 20), (Radiation, 25)])
                      , (Glass, [(Piercing, 10), (Shock, 25), (Blunt, 10), (Slash, 10), (Heat, 20), (Radiation, 25)])
                      , (Plastic, [(Piercing, 15), (Shock, 40), (Blunt, 20), (Slash, 20), (Heat, 5), (Radiation, 25)])
                      , (Uranium, [(Piercing, 20), (Shock, 30), (Blunt, 30), (Slash, 30), (Heat, 30), (Radiation, 100)])
                      ]
