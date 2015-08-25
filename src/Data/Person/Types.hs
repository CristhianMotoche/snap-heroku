{-# LANGUAGE DeriveGeneric #-}

module Data.Person.Types where

------------------------------------------------------------------------------
import Control.Applicative ((<$>), (<*>)) 
import Database.PostgreSQL.Simple.FromRow
import Database.PostgreSQL.Simple.ToRow
import Database.PostgreSQL.Simple.ToField
import Data.Aeson (ToJSON, FromJSON)
import GHC.Generics (Generic)
import Data.UUID (UUID)
------------------------------------------------------------------------------

data Person = Person { _id   :: UUID
                     , _name :: String
                     , _age  :: Int
                     } deriving (Show, Generic)

instance FromRow Person where
  fromRow = Person <$> field
                   <*> field
                   <*> field

instance ToRow Person where
  toRow Person{..} =
    [
      toField _name
    , toField _age
    ]

instance ToField Person where
  toField Person{..} = toField _id

instance ToJSON Person

instance FromJSON Person

setPersonId :: Person -> UUID -> Person
setPersonId d _id = d{_id = _id}
