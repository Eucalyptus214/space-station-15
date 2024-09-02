{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeApplications           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies               #-}

module Main (main) where

import System.Directory
import Apecs
import System.Random
import System.Exit
import Control.Monad
import Data.Monoid
import Data.Semigroup (Semigroup)
import Sound.OpenAL
import SDL
import Graphics.UI.GLUT

appLoop :: Renderer -> IO ()
appLoop renderer = do
  events <- pollEvents
  let eventIsQPress event =
        case eventPayload event of
          KeyboardEvent keyboardEvent ->
            keyboardEventKeyMotion keyboardEvent == Pressed &&
            keysymKeycode (keyboardEventKeysym keyboardEvent) == KeycodeQ
          _ -> False
      qPressed = any eventIsQPress events
  rendererDrawColor renderer Graphics.UI.GLUT.$= V4 0 0 255 255
  SDL.clear renderer
  present renderer
  unless qPressed (appLoop renderer)

main = do
    SDL.initializeAll
    window <- SDL.createWindow "My SDL Application" defaultWindow
    renderer <- SDL.createRenderer window (-1) defaultRenderer
    appLoop renderer
    SDL.destroyWindow window
