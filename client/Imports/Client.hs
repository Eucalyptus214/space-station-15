module Imports.Client (stepSystemsClient) where

type System' a = System World a

import Client.Components.Sprite
import Client.Components.Visible

stepSystemsClient :: Float -> System' ()
stepSystemsClient dT = do
