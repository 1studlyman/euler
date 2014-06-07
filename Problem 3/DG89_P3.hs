-- Problem # Solution: Haskell
--
-- Author: Daneg89
-- Date: June 7, 2014
--
-- Note: This solution takes ~15 minutes to calculate the correct answer

targetVal = 600851475143
sieveBound = floor (sqrt (fromIntegral targetVal))

-- Generate a Sieve of Eratosthenes
sieveVals = [2..sieveBound]

createSieve :: [Int] -> [Int]
createSieve [] = []
createSieve [x] = [x]
createSieve (x:xs) = x : createSieve [z | z <- xs, z `mod` x > 0]

sieve = createSieve sieveVals

-- Find the prime factors of the target value
factors = [x | x <- sieve, targetVal `mod` x == 0]

main = print $ maximum factors
