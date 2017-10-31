module TimeToSave where

timeToSave :: Double -> Double -> Double -> Maybe Int
timeToSave goal income expenses =
    let
    netIncome = income - expenses
    time = ceiling (goal/netIncome)
    in if netIncome <= 0
          then Nothing
          else Just time
