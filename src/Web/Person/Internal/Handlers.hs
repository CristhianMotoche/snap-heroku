{-# LANGUAGE OverloadedStrings #-}

module Web.Person.Internal.Handlers
  ( createHandler
  , showHandler
  ) where


import Application
import Data.Person.Persistence
import Data.Person.Types
import Web.Person.Internal.Handlers
import Web.Person.Person

-- import qualified Data.Text as T
-- import qualified Data.ByteString as BS
-- import qualified Data.ByteString.UTF8 as U8 (fromString, toString)

-- import Control.Monad (liftM)
import Snap.Core (getRequest, rqQueryString, writeBS)
-- import Snap.Extras.CoreUtils
-- import Snap.Extras.JSON
-- import Crypto.Hash.SHA256 (hash)
-- import Data.Text.Encoding (decodeUtf8, encodeUtf8)
-- import Data.UUID (UUID)
-- import Data.List (zip)
-- import Data.Maybe (catMaybes, isJust, fromJust)
-- import Text.Printf (printf)

createHandler :: Handler App App ()
createHandler = writeBS "Hello POST" 
--                 ifCreate $ do
--   group <- getGroup >>= createGroup
--   token <- createToken $ Token 0 (generateKey group) group
--   writeJSON $ HostAuthResponse { authToken =  _token token }

showHandler :: Handler App App ()
showHandler = ifTopGet $ do
--  request <- getRequest
--  devices <- findDevicesByToken $ T.pack (drop 8 $ U8.toString (rqQueryString request))
--  statuses <- mapM getDeviceLastStatus devices
--  writeSingletonJSON "devices" $ getStatuses (zip devices statuses)

-- getGroup :: AppHandler Group
-- getGroup = reqJSON
-- 
-- getDeviceLastStatus :: D.Device -> AppHandler (Maybe DeviceStatus)
-- getDeviceLastStatus d = findLastDeviceStatusById $ D._uuid d
-- 
-- getStatuses :: [(D.Device, Maybe DeviceStatus)] -> [ResponseDevice]
-- getStatuses list = map (getResponseDevice . getJustValidStatuses) filteredList
--   where
--     filteredList = filter filterDevice list
-- 
-- filterDevice :: (D.Device, Maybe DeviceStatus) -> Bool
-- filterDevice (_, ds) = isJust ds
-- 
-- getJustValidStatuses :: (D.Device, Maybe DeviceStatus) -> (D.Device, DeviceStatus)
-- getJustValidStatuses (d, ds) = (d, fromJust ds)
-- 
-- getResponseDevice :: (D.Device, DeviceStatus) -> ResponseDevice
-- getResponseDevice (d, ds) = ResponseDevice { name = D._name d
--                                            , host = D._host d
--                                            , currentStatus = _battery_status ds
--                                            , creationTime = _created_at ds
--                                            }
-- 
-- generateKey :: Group -> APIKey
-- g
