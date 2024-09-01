{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.PoweredDevice ( PoweredDevice(..) ) where

import Apecs

data PoweredDevice = PoweredDevice
  { requiredPower :: Float
  , enabled :: Bool
  } deriving Show
instance Component PoweredDevice where type Storage PoweredDevice = Map PoweredDevice
