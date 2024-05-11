module Client.Components.Position(Position) where

import Apecs

data Position = Position Int Int deriving (Show, Eq)
instance Component Position where type Storage Position = Map Position
