{-# LANGUAGE OverloadedStrings #-}

module Web.Person.Person where

------------------------------------------------------------------------------
import Application
import Snap.Snaplet
import Web.Person.Internal.Handlers
------------------------------------------------------------------------------

createPersonHandler :: Handler App App ()
createPersonHandler = createHandler 

viewPersonHandler :: Handler App App ()
viewPersonHandler = showHandler
