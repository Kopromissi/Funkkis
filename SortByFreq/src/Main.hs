module SortByFreq where
import Data.List
import Data.Ord

-- Due to the bug in the feedback-bot, this function needs to
-- be overly tightly typed. Other than for the bot, the type
-- should be the more general (Eq a, Ord a) => [a] -> [a].
freqSort :: String -> String
freqSort inputString =
                    let
                    sortString =  sortBy (comparing length) (group( sort inputString))
                    in concat sortString
