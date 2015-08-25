{-# LANGUAGE OverloadedStrings #-}

module Data.Person.Internal.Queries where

------------------------------------------------------------------------------
import        Database.PostgresSQL.Simple (Query)
------------------------------------------------------------------------------

selectPersonQuery :: Query
selectPersonQuery = "SELECT id, name, age FROM people WHERE id = ?"

insertPerson :: Query
insertPerson = "INSERT INTO people (name, age) VALUES (?, ?) RETURNING id"
