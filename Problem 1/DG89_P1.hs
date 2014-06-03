-- Problem 1 Solution: Haskell
--
-- Author: Daneg89
-- Date: June 3rd, 2014

-- Define the natural numbers below 1000 that are multiples of 3 or 5
natural_numbers = [num | num <- [1..999], num `mod` 3 == 0 || num `mod` 5 == 0]

-- Add the numbers together
total = foldl (\acc x -> acc + x) 0 natural_numbers

main = print total
