module CountNonEmpty where
import Data.List

countNonEmptyLines :: String -> Int
countNonEmptyLines inputString
              = let
              listOfLines = lines inputString
              notNull x = not (null x)
              filteredList = filter notNull listOfLines
              in length filteredList
