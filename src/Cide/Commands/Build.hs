module Cide.Commands.Build 
  ( Options(..)
  , run
  ) where

import Prelude hiding (FilePath, putStr)
import Turtle
import qualified Cide.BuildConfig as Config
import Data.Text.IO (putStr)

data Options = Options
  { name :: String
  , hostExportDir :: FilePath
  , export :: Bool
  , sshKey :: FilePath
  }
  deriving (Show, Eq)

run :: Options -> IO ()
run _ = do
  config <- Config.find
  putStr (repr config)
  mkdir "test"
  output "test/foo" "Hello, world!"  -- Write "Hello, world!" to "test/foo"
  stdout (input "test/foo")    -- Stream "test/foo" to stdout
  rm "test/foo"
  rmdir "test"
  die "Urk!"