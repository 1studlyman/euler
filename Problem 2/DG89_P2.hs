-- Problem 2 Solution: Haskell
--
-- Author: Daneg89
-- Date: June 4, 2014

maxVal = 4000000

-- Fibonacci sequence
fib :: Int -> [Int]
fib 0 = [1]
fib 1 = [2, 1]
fib x = (head (fib (x - 1)) + head (fib (x - 2))) : fib (x - 1)

-- Define the Fibonacci numbers below 4 Million that are even
fibNumbers = [x | x <- (fib 31), x < maxVal, x `mod` 2 == 0]

-- Add the numbers together
total = foldl (\acc x -> acc + x) 0 fibNumbers

main = print total
