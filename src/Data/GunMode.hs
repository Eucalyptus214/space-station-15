module Data.GunMode( GunMode(..) ) where

data GunMode = Laser | Ion | Ballistic | Pulse | Disable deriving (Show, Read, Eq)
