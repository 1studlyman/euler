-- Problem 5 Solution: Haskell
--
-- Author: Daneg89
-- Date: June 7, 2014
--
-- Calculation time: ~18-20 seconds

modList = [2..20]
targetRange = [2,4..]

-- Function that sees if a value is evenly divisible by a list of values
divisibleByList :: [Int] -> Int -> Bool
divisibleByList [] _ = False
divisibleByList [x] target = target `mod` x == 0
divisibleByList (x:xs) target = if target `mod` x == 0
                                then divisibleByList xs target
                                else False

divisibleByModList = divisibleByList modList
targetVal = head $ [x | x <- targetRange, divisibleByModList x] 

main = print targetVal
