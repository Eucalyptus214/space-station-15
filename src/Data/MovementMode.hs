module Data.MovementMode( MovementMode(..)
                        , getModeSpeed
                        ) where

data MovementMode = Running | Walking | Crouching | Proning

getModeSpeed :: MovementMode -> Float
getModeSpeed mode =
  case mode of
    Running     -> 2
    Walking     -> 1
    Crouching   -> 0.5
    Proning     -> 0.25
