
module Data.Person.Persistence where

------------------------------------------------------------------------------
import           Data.Person.Persistence
import           Data.Person.Types
import           Data.Person.Internal.Queries
------------------------------------------------------------------------------

import           Application
import           Data.Maybe (listToMaybe)
import           Data.UUID (UUID)
import           Snap.Snaplet.PostgresqlSimple
import           Database.PostgresSQL.Simple.ToField
------------------------------------------------------------------------------

findRecordById :: (Persistable m, ToField a, FromRow b) => Query -> a -> m (Maybe b)
findRecordById q _id = listToMaybe `fmap` (query q $ Only _id)

findPersonById :: Persistable m => UUID -> m (Maybe Person)
findPersonById  = findRecordById selectPersonQuery
