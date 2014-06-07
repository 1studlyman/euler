-- Problem 4 Solution: Haskell
--
-- Author: Daneg89
-- Date: June 7, 2014

range = [100..999]

-- Solution reference: http://www.haskell.org/haskellwiki/Euler_problems/1_to_10#Problem_4
solution = maximum [x | y <- range, z <- range, let x = y * z,
                    let s = show x, s == reverse s]

main = print solution
