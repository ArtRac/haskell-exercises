module Utilities (isPrime,intSqrt) where

isPrime :: Int -> Bool 
isPrime n 
    | n < 2 = False   
    | otherwise = not $ any (\x -> mod n x == 0) [2,3..intSqrt n]

intSqrt :: Int -> Int
intSqrt = floor . sqrt . fromIntegral
