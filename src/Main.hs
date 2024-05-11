{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeApplications           #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

import System.Directory
import Settings
import Apecs
import System.Random
import System.Exit
import Control.Monad
import Data.Monoid
import Data.Semigroup (Semigroup)

import Imports.Client

import OpenAL

import SDL
import qualified SDL.Image as SDLIm
import SDL.Input
import SDL.Video.OpenGL

windowConfig = WindowConfig
  { windowBorder          = True
  , windowHighDPI         = False
  , windowInputGrabbed    = False
  , windowMode            = Windowed
  , windowGraphicsContext = defaultOpenGL
  , windowPosition        = Centered
  , windowResizable       = False
  , windowInitialSize     = V2 2000 2000
  , windowVisible         = True
  }

main = do
  initializeAll
  window <- createWindow "Space Station 15" windowConfig
  renderer <- createRenderer window (-1) defaultRenderer

  icon <- SDLIm.load "./assets/images/icon.png"
  setWindowIcon window icon

  loop renderer
  destroyWindow window

loop :: Renderer -> IO()
loop renderer = do
  events <- pollEvents

               
