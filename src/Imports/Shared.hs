module Imports.Shared (stepSystemsShared) where

type System' a = System World a

import Shared.Components.Clothing
import Shared.Components.Examinable
import Shared.Components.Health
import Shared.Components.Mind
import Shared.Components.Mob
import Shared.Components.Movement
import Shared.Components.Target
import Shared.Components.Tile
import Shared.Components.Transform
import Shared.Components.ID
import Shared.Components.PoweredDevice
import Shared.Components.Tool
import Shared.Components.Access
import Shared.Components.StatusEffects
import Shared.Components.Item
import Shared.Components.InputMover
import Shared.Components.Mode

stepSystemsShared :: Float -> System' ()
stepSystemsShared = do
