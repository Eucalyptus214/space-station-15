{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Temperature
  ( Temperature(..)
  , calcTempInKelvin
  , calcTemp
  ) where

import qualified Data.Atmos
import Apecs

data Temperature = Temperature
  { temp :: Data.Atmos.Temperature
  , heat_cap :: Float
  , conductivity :: Float
  } deriving Show

instance Component Temperature where Storage Temperature = Map Temperature

calcTempInKelvin :: Temperature
                 -> Temperature
                 -> Data.Atmos.Temperature
calcTempInKelvin (Temperature {temp = (Data.Atmos.Kelvin temp_1), heat_cap = heat_cap_1, conductivity = k_1})
                 (Temperature {temp = (Data.Atmos.Kelvin temp_2), heat_cap = heat_cap_2, conductivity = k_2})
                 = Data.Atmos.Kelvin (temp_1 + ((min k_1 k_2) * (temp_2 - temp_1) / heat_cap_1 / 75))

type T = Temperature
calcTemp :: (T, T)
         -> (T, T)
calcTemp (t1, t2) = (t1{ temp = (calcTemp t1 t2) }, t2{ temp = (calcTemp t2 t1) })

