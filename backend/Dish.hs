{-# LANGUAGE DeriveGeneric #-}

module Dish where

import GHC.Generics
import Data.Aeson

data Ingredient = Ingredient
  { name     :: String
  , quantity :: String
  } deriving (Show, Generic)

instance ToJSON Ingredient
instance FromJSON Ingredient

data Step = Step
  { stepNumber     :: Int
  , instruction    :: String
  , detail         :: String
  , stepIngredient :: String
  , stepQuantity   :: String
  } deriving (Show, Generic)

instance ToJSON Step
instance FromJSON Step

data Dish = Dish
  { dishName    :: String
  , cuisine     :: String
  , description :: String
  , difficulty  :: String
  , cookingTime :: String
  , servings    :: Int
  , chefTip     :: String
  , ingredients :: [Ingredient]
  , steps       :: [Step]
  } deriving (Show, Generic)

instance ToJSON Dish
instance FromJSON Dish