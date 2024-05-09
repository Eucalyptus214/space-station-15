module Settings
  (
    keybinds
  ) where

import qualified Data.Map as M
import Actions

keybinds :: M.Map Char a
keybinds = [('e', examine),
           ('f', fire),
           ('x', peek),
           ('H', changeHand),
           ('a', activate),
           ('A', activateHand),
           ('X', look),
           ('[', snapBackward),
           (']', snapForward),
           ('h', moveUp),
           ('j', moveDown),
           ('k', moveLeft),
           ('l', moveRight),
           ('W', wear),
           ('C', openBuildingMenu),
           ('E', eat),
           ('i', inventory),
           ('r', reload),
           ('d', multidrop),
           ('D', drop),
           ('c', close),
           ('y', moveTopLeft),
           ('u', moveTopRight),
           ('b', moveBottomLeft),
           ('n', moveBottomRight),
           ('t', throw),
           ('.', self)]
