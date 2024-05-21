module Data.Mob( MobState(..)
               , HealthState(..)
               , MovingState(..)
               , getHealthState
               , calcHealth
               ) where

import Data.DamageType
import qualified Data.Map as M

data MobState = Alive | Critical | Dead deriving (Show, Read, Eq)
data MovingState = Running | Walking | Crawling deriving (Show, Read, Eq)
data HealthState = Good | Poor | Bad | ReallyBad | Critical | Dead deriving (Show, Read, Eq)

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

calcHealth :: Float -> M.Map DamageType Float -> M.Map DamageType Float -> Float
calcHealth maxHealth damage resistance = foldl (\acc (t, x) -> maxHealth - (x * ((100 - (lookup t resistance)) / 100))) maxHealth damage
