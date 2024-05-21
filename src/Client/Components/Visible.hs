module Client.Components.Visible( Visible(..)
                                ) where

import Apecs
newtype Visible = Visible
instance Component Visible where Storage Visible = Map Visible
