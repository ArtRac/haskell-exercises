-- https://exercism.org/tracks/haskell/exercises/nth-prime
-- Given a number n, determine what the nth prime is.
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
-- we can see that the 6th prime is 13.
-- If your language provides methods in the standard library to deal with prime numbers, 
-- pretend they don't exist and implement them yourself.

module Nth_prime (nth) where

nth :: Int -> Maybe Integer
nth n 
    | n < 1 = Nothing  
    | otherwise = Just (nth' n 1 2)

nth' :: Int  -> Int  -> Int  -> Integer
nth' x y z
    | x == y && isPrime z = toInteger z
    | y < z && isPrime z = nth' x (y+1) (z+1)
    | not $ isPrime z = nth' x y (z+1)

isPrime :: Int -> Bool 
isPrime n 
    | n < 2 = False   
    | otherwise = not $ any (\x -> mod n x == 0) [2,3..intSqrt n]

intSqrt :: Int -> Int
intSqrt = floor . sqrt . fromIntegral
