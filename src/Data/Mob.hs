module Data.Mob( MobState(..)
               , HealthState(..)
               , MovingState(..)
               , getHealthState
               , calcHealth
               ) where

import Data.DamageType

data MobState = Alive | Critical | Dead
data MovingState = Running | Walking | Crawling
data HealthState = Good | Poor | Bad | ReallyBad | Critical | Dead

getHealthState :: Float -> Float -> HealthState
getHealthState health maxHealth
  | health <= minReallyBadHealth = ReallyBad
  | health <= minBadHealth = Bad
  | health <= minMediocreHealth = Poor
  | health <= minCritHealth = Critical
  | health <= 0 = Dead
  | otherwise = Good
  where minCritHealth = maxHealth / 2
        minMediocreHealth = minCritHealth + minCritHealth / 2
        minBadHealth = minCritHealth + minMediocreHealth / 2
        minReallyBadHealth = minCritHealth + minBadHealth / 2

calcHealth :: [(DamageType, Float)] -> Float -> Float
calcHealth [] maxHealth = maxHealth
calcHealth ((_, x):xs) maxHealth = maxHealth - x + (calcHealth xs 0)
