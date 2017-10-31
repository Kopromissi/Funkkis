module SortByFreq where
import Data.List
import Data.Ord

-- Due to the bug in the feedback-bot, this function needs to
-- be overly tightly typed. Other than for the bot, the type
-- should be the more general (Eq a, Ord a) => [a] -> [a].
freqSort :: String -> String
freqSort inputString =
                    let
                    sortString = sort inputString
                    toGroups = group sortString
                    sortGroups = sortBy (comparing length) toGroups
                    in concat sortGroups
