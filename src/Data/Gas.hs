module Data.Gas( Gas(..)
               , Reaction(..)
               , AtmosComposition
               , ReactionData
               ) where

import qualified Data.Map as M

data Gas = Hydrogen | Oxygen | Nitrogen | Xenon | Tritium | Helium3 | Neon | Helium | Chlorine | Oxygen15 | NitrousOxide | CarbonDioxide | CarbonMonoxide | WaterVapor | NitrousAcid | HydrogenSulfide | MustardGas | SulfurDioxide
           deriving (Show, Read)

data Reaction = TritiumFire | HydrogenFire | TritiumDecomposition | TritiumProduction | NitrousOxideFormation | MustardGasProduction | NitrousAcidProduction | NeonProduction
                deriving (Show, Read)

type AtmosComposition = M.Map Gas Float
type ReactionData = (Reaction, Float)

