module UrlParse where
import Prelude hiding (product)
import Data.List
import Data.Char

takeHost :: String -> String
takeHost url = let
                removePrefix  = takeWhile (/= '/')(drop  2(dropWhile (/= '/') url))
                in removePrefix
--TODO How to remove suffix from url
