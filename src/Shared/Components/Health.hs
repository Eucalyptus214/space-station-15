{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE NamedFieldPuns             #-}

module Shared.Components.Health ( Health(..) ) where

import Apecs
import Data.DamageType
import qualified Data.Map as M
import Data.Functor
import Data.Semigroup

data Health = Health
  { maxHealth :: Float
  , damage :: M.Map DamageType Float
  } deriving Show

instance Functor Health where
  fmap f health@Health{ damage } = health{ damage = f damage }

instance Semigroup Health where
  (<>) health@Health{ damage } Health{ damage=damage1 } = health{ damage = damage ++ damage1 }
  sconcat = foldl1 (<>)
  stimes n health = health <> (stimes (n - 1) health)

instance Monoid Health where
  mempty = Health{ maxHealth = 0, damage = [] }
  --mappend health@Health{ damage } Health{ damage=damage1 } = health{ damage = damage ++ damage1 }
  --mconcat = foldl1 mappend

instance Component Health where type Storage Health = Map Health
