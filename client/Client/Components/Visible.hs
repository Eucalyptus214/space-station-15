{-# LANGUAGE TypeFamilies               #-}

module Client.Components.Visible ( Visible(..) ) where

import Apecs

newtype Visible = Visible { layer :: Int } deriving Show
instance Component Visible where type Storage Visible = Map Visible
