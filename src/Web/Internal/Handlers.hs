module Web.Internal.Handlers where

------------------------------------------------------------------------------
import           Snap.Core
import           Snap.Snaplet
------------------------------------------------------------------------------
import           Application
------------------------------------------------------------------------------

ifTopGet :: Handler App App a -> Handler App App a
ifTopGet = ifTop . method GET

ifTopPost :: Handler App App a -> Handler App App a
ifTopPost = ifTop . method POST
