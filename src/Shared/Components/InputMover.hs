{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.InputMover ( InputMover(..) ) where

import Apecs

data InputMover = InputMover deriving Show
instance Component InputMover where type Storage InputMover = Map InputMover
