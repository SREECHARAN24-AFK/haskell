{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_chefs_kitchen (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "chefs_kitchen"
version :: Version
version = Version [1,0,0] []

synopsis :: String
synopsis = "Professional Cooking Trainer - Haskell Mini Project"
copyright :: String
copyright = ""
homepage :: String
homepage = ""
