module Data.Gas( Gas(..)
               , Reaction(..)
               , AtmosComposition
               , ReactionData
               ) where

data Gas = Hydrogen | Oxygen | Nitrogen | Xenon | Tritium | Helium3 | Neon | Helium | Chlorine | Oxygen15 | NitrousOxide | CarbonDioxide | CarbonMonoxide | WaterVapor | NitrousAcid | HydrogenSulfide | MustardGas | SulfurDioxide

data Reaction = TritiumFire | HydrogenFire | TritiumDecomposition | TritiumProduction | NitrousOxideFormation | MustardGasProduction | NitrousAcidProduction | NeonProduction

type AtmosComposition = Map Gas Float
type ReactionData = (Reaction, Float)

