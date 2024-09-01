module Data.Player ( Player(..) ) where

newtype Player = Player String deriving (Show, Read, Eq)
