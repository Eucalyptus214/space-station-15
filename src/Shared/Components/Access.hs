{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Access ( Access(..) ) where

import Apecs
import qualified Data.Access

data Access = Access { required :: [Data.Access.Access] } deriving Show
instance Component Access where type Storage Access = Map Access
