{-# LANGUAGE OverloadedStrings #-}

module Web.Person 
  where

import           Snap.Snaplet
import           Application
import           Snap.Core

personHandler :: Handler App App ()
personHandler = writeBS "Hola mundo"
