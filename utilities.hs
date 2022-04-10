module Utilities (isPrime,isqrt) where

isPrime :: Int -> Bool 
isPrime n 
    | n < 2 = False   
    | otherwise = not $ any (\x -> mod n x == 0) [2.. isqrt n]

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral
