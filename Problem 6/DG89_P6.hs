-- Problem 6 Solution: Haskell
--
-- Author: Daneg89
-- Date: June 7, 2014

numbers = [1..100]

sumOfSquares = sum (map (^2) numbers)
squareOfSum = (sum numbers) ^ 2

main = print $ squareOfSum - sumOfSquares
