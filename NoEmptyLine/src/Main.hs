module CountNonEmpty where
import Data.List

countNonEmptyLines :: String -> Int
countNonEmptyLines inputString
              = let
              notNull x = not (null x)
              listOfLines = filter notNull (lines inputString)
              in length listOfLines
