module Client.Components.Velocity(Velocity) where

import Apecs

data Velocity = Velocity Int Int deriving (Show, Eq)
instance Component Velocity where type Storage Velocity = Map Velocity
