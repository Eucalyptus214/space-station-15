module Data.Atmos
  ( Gas(..)
  , GasType(..)
  , ReactionType(..)
  , Temperature(..)
  , ReactionData
  , kelvinToFahrenheit
  , kelvinToCelsius
  ) where

import qualified Data.Map

data GasType = Hydrogen | Oxygen | Nitrogen | Xenon | Tritium | Helium3 | Neon | Helium | Chlorine | Oxygen15 | NitrousOxide | CarbonDioxide | CarbonMonoxide | WaterVapor | NitrousAcid | HydrogenSulfide | MustardGas | SulfurDioxide deriving (Show, Read, Eq)

data ReactionType = TritiumFire | HydrogenFire | TritiumDecomposition | TritiumProduction | NitrousOxideFormation | MustardGasProduction | NitrousAcidProduction | NeonProduction deriving (Show, Read, Eq)

newtype Temperature = Kelvin Float deriving (Show, Read, Eq)

data Gas = Gas
  { gas_type :: GasType
  , heat_cap :: Float
  , conductivity :: Float
  , amount :: Float
  } deriving Show

type ReactionData = Data.Map.Map ReactionType [Gas]

kelvinToFahrenheit :: Temperature -> String
kelvinToFahrenheit (Kelvin t) = "Fahrenheit " ++ show (t * 1.8 - 459.67)

kelvinToCelsius :: Temperature -> String
kelvinToCelsius (Kelvin t) = "Celsius " ++ show (t - 273.15)
