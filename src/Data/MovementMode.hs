module Data.MovementMode
  ( MovementMode(..)
  , getModeSpeed
  ) where

data MovementMode = Running | Walking | Crouching | Proning
                    deriving (Show, Read, Eq)

getModeSpeed :: MovementMode -> Float
getModeSpeed Running    = 2
getModeSpeed Walking    = 2
getModeSpeed Crouching  = 0.5
getModeSpeed Proning    = 0.25
