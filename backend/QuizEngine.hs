{-# LANGUAGE DeriveGeneric #-}

module QuizEngine where

import Dish
import GHC.Generics
import Data.Aeson
import Data.List (nub)

data QuizQuestion = QuizQuestion
  { qText    :: String
  , qOptions :: [String]
  , qAnswer  :: String
  , qType    :: String
  , qStep    :: Int
  } deriving (Show, Generic)

instance ToJSON QuizQuestion
instance FromJSON QuizQuestion

generateQuiz :: Dish -> [QuizQuestion]
generateQuiz dish = concatMap makeStepQuestions (steps dish)
  where
    allIngNames  = map name (ingredients dish)
    allIngQtys   = map quantity (ingredients dish)
    fallbackIngs = ["Water", "Flour", "Sugar", "Olive Oil", "Butter", "Egg", "Milk", "Salt"]
    fallbackQtys = ["100g", "2 cups", "500ml", "3 tbsp", "250g", "1 tsp", "4 tbsp", "0.5 cup"]

    makeOptions correct others fallbacks =
      take 4 (nub (correct : filter (/= correct) others ++ filter (/= correct) fallbacks))

    makeStepQuestions s
      | stepIngredient s == "" = []
      | otherwise =
          [ QuizQuestion
              ("Step " ++ show (stepNumber s) ++ " - " ++ instruction s ++ ": Which ingredient do you need?")
              (makeOptions (stepIngredient s) allIngNames fallbackIngs)
              (stepIngredient s)
              "ingredient"
              (stepNumber s)
          , QuizQuestion
              ("Step " ++ show (stepNumber s) ++ " - " ++ instruction s ++ ": What quantity of " ++ stepIngredient s ++ "?")
              (makeOptions (stepQuantity s) allIngQtys fallbackQtys)
              (stepQuantity s)
              "quantity"
              (stepNumber s)
          ]