{-# LANGUAGE OverloadedStrings #-}

module Web.Person.Person where

------------------------------------------------------------------------------
import Application
import Control.Applicative ((<|>))
import Snap.Snaplet
import Snap.Core
import Web.Person.Internal.Handlers
------------------------------------------------------------------------------

createPersonHandler :: Handler App App ()
createPersonHandler = createHandler 

viewPersonHandler :: Handler App App ()
viewPersonHandler = showHandler
