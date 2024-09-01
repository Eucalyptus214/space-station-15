{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE NamedFieldPuns             #-}

module Shared.Components.Health ( Health(..) ) where

import Apecs
import Data.DamageType
import qualified Data.Map as M
import Data.MonoTraversable
import Data.Semigroup

data Health = Health
  { maxHealth :: Float
  , damage :: M.Map DamageType Float
  } deriving Show

instance MonoFunctor Health where
  omap f health@Health{ damage } = health{ damage = M.fromList (f (M.toList damage)) }

instance Semigroup Health where
  (<>) health@Health{ damage } Health{ damage=damage1 } = health{ damage = (M.fromList ((M.toList damage) ++ (M.toList damage1))) }
  sconcat = foldl1 (<>)
  stimes n health = health <> (stimes (n - 1) health)

instance Monoid Health where
  mempty = Health{ maxHealth = 0, damage = M.fromList [] }

instance Component Health where type Storage Health = Map Health
