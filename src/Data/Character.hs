module Data.Character( Character(..)
                     , Wearable
                     ) where

import Data.Wearable as W

data Character = Character { name :: String
                           , health :: Float
                           , wearing :: [W.Wearable]}
