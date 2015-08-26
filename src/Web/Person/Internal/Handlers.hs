{-# LANGUAGE OverloadedStrings #-}

module Web.Person.Internal.Handlers
  ( createHandler
  , showHandler
  ) where


------------------------------------------------------------------------------
import Application
import Data.Person.Persistence
import Data.Person.Types
import Web.Internal.Handlers
------------------------------------------------------------------------------
import Snap.Core 
import Snap.Snaplet
import Snap.Extras.JSON
------------------------------------------------------------------------------

createHandler :: Handler App App ()
createHandler = ifTopPost $  do
              person <- getPerson

showHandler :: Handler App App ()
showHandler = writeBS "Hello GET"

getPerson :: Handler App App Person
getPerson = reqJSON
