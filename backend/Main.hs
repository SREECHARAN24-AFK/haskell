{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import RecipeDB
import QuizEngine
import ScoreEngine
import Dish
import Data.Aeson (object, (.=), ToJSON)
import Data.List (find)

main :: IO ()
main = do
  putStrLn "Starting Chef's Kitchen on port 3000..."
  scotty 3000 $ do

    get "/ping" $ text "pong"

    get "/recipes" $ do
      addHeader "Access-Control-Allow-Origin" "*"
      json recipes

    get "/recipe/:name" $ do
      addHeader "Access-Control-Allow-Origin" "*"
      rname <- captureParam "name"
      case find (\d -> dishName d == rname) recipes of
        Just dish -> json dish
        Nothing   -> json (object ["error" .= ("Dish not found" :: String)])

    get "/quiz/:name" $ do
      addHeader "Access-Control-Allow-Origin" "*"
      rname <- captureParam "name"
      case find (\d -> dishName d == rname) recipes of
        Just dish -> json (generateQuiz dish)
        Nothing   -> json (object ["error" .= ("Dish not found" :: String)])

    get "/score/:correct/:total" $ do
      addHeader "Access-Control-Allow-Origin" "*"
      c <- captureParam "correct"
      t <- captureParam "total"
      json (calculateScore c t)