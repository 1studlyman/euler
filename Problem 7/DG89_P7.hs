-- Problem 7 Solution: Haskell
--
-- Author: Daneg89
-- Date: June , 2014
--
-- Calculation time: ~10 seconds

upperBound = 1000000

createSieve :: [Int] -> [Int]
createSieve [] = []
createSieve [x] = [x]
createSieve (x:xs) = x : createSieve [z | z <- xs, z `mod` x > 0]

sieve = take 10001 $ createSieve [2..upperBound]

main = print $ sieve !! 10000
