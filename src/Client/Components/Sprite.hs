{-# LANGUAGE TypeFamilies               #-}

module Client.Components.Sprite( Sprite(..)
                               ) where

import Apecs

data Sprite = Sprite { paths :: [String]
                     , color :: (Int, Int, Int)
                     }
                     deriving Show
instance Component Sprite where type Storage Sprite = Map Sprite
