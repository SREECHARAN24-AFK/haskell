{-# LANGUAGE DeriveGeneric #-}

module ScoreEngine where

import GHC.Generics
import Data.Aeson

data ScoreResult = ScoreResult
  { totalQuestions :: Int
  , correctAnswers :: Int
  , percentage     :: Int
  , stars          :: Int
  , rating         :: String
  , feedback       :: String
  } deriving (Show, Generic)

instance ToJSON ScoreResult

calculateScore :: Int -> Int -> ScoreResult
calculateScore correct total = ScoreResult total correct pct starCount title msg
  where
    pct = if total > 0 then (correct * 100) `div` total else 0
    (starCount, title, msg)
      | pct >= 90 = (5, "Master Chef", "Outstanding! You cook like a world-class professional chef. Every ingredient and technique is perfect!")
      | pct >= 75 = (4, "Sous Chef", "Excellent work! You have strong culinary skills with only minor improvements needed.")
      | pct >= 60 = (3, "Line Cook", "Good effort! You know the basics well but need more practice with some techniques and quantities.")
      | pct >= 40 = (2, "Home Cook", "Decent start! You understand some fundamentals but need more practice with recipes.")
      | otherwise = (1, "Kitchen Apprentice", "Keep practicing! Study the recipes carefully and you will improve quickly.")