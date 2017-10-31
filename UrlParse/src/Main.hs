module UrlParse where
import Prelude hiding (product)
import Data.List
import Data.Char

takeHost :: String -> String
takeHost url = let
                removePrefix  = drop  3(dropWhile isAlpha url)
                in takeWhile (/= '/') removePrefix
