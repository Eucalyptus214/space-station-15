module Prototypes
  ( mobHuman
  , handheldRadio
  , headsetRadio
  ) where

import Imports.Shared
import Imports.Client
import Imports.Server
import Imports.UI

-- TODO: limbs, proper textures

mobHuman = ( Examinable{ name = "Urist McHands", desc = "a human bean"}
           , Visibility{ layer = 1 }
           , Sprite{ color = (255, 255, 255), paths = ["./assets/images/mob/human.png"] }
           , Mob{ consciousness = Conscious, limbs = [mobHumanLeftArm, mobHumanLeftLeg, mobHumanTorso, mobHumanRightArm, mobHumanRightLeg, mobHumanLeftHand, mobHumanLeftFoot, mobHumanRightHand, mobHumanRightFoot, mobHumanHead, mobHumanEyes], wearing = [], state = Alive, name = "Urist McHands" }
           , Health{ maxHealth = 200, damage = [] }
           , Mind{ owner = "" }
           , Mode{ mode = Move }
           , InputMover
           )

handheldRadio = ( Examinable{ name = "Handheld Radio", desc = "A handheld radio listening on the Common frequency." }
                , Visibility{ layer = 1 }
                , Sprite{ color = (255, 255, 255), paths = ["./assets/images/handheld.png"] }
                , NTNetDevice{ frequency = 24.8, max = 24.8, min = 21.3 }
                , RadioDevice{ keys = [] }
                , ToggleActiveOnUse
                , PoweredDevice{ enabled = true, requiredPower = 0.0 }
                , Item
                )

headsetRadio = ( Examinable{ name = "Radio Over-ear Headset", desc = "A radio that you wear over your head." }
               , NTNetDevice{ frequency = 24.8, max = 24.8, min = 21.3 }
               , Configurable{ open = False }
               , RadioDevice{ keys = [] }
               , PoweredDevice{ enabled = True, requiredPower = 0.0 }
               , Visibility{ layer = 1 }
               , ToggleUIOnUse{ ui = headsetRadioUI }
               , Item
               , Sprite{ color = (255, 255, 255), paths = ["./assets/images/headset.png", "./assets/images/headset_hand_left.png", "./assets/images/headset_hand_right.png", "./assets/images/headset_worn.png"] }
               )

-- the most basic prototypes ever
wall = ( Examinable{ name = "Solid Wall", desc = "Keeps the air in and the greytide out." }
       , Health{ maxHealth = 1000, damage = [] }
       )

lattice = ( Examinable{ name = "Lattice", desc = "Iron rods used for plating stability." }
          , Health{ maxHealth = 15, damage = [] }
          )

plating = ( Examinable{ name = "Plating", desc = "Actual floor, amazing." }
          , Health{ maxHealth = 300, damage = [] }
          )
