{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE NamedFieldPuns             #-}

module Shared.Components.StatusEffects ( StatusEffects(..) ) where

import Apecs
import Data.StatusEffect
import Data.Semigroup
--import qualified Data.Map as M

type TimeStart = Float
type TimeEnd = Float

newtype StatusEffects = StatusEffects { effects :: [(StatusEffect, (TimeStart, TimeEnd))] } deriving Show

instance Semigroup StatusEffects where
  (<>) sfx@StatusEffects{ effects } StatusEffects{ effects=effects2 } = sfx{ effects = effects ++ effects2 }
  sconcat = foldl1 (<>)
  stimes n sfx = sfx <> (stimes (n - 1) sfx)

instance Monoid StatusEffects where
  mempty = StatusEffects{ effects = [] }
  --mappend sfx@StatusEffects{ effects } StatusEffects{ effects=effects2 } = sfx{ effects = effects ++ effects2 }
  --mconcat = foldl1 mappend

instance Component StatusEffects where type Storage StatusEffects = Map StatusEffects
