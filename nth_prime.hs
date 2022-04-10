module Prime (isPrime) where


-- Given a number n, determine what the nth prime is.
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
-- we can see that the 6th prime is 13.
-- If your language provides methods in the standard library to deal with prime numbers, 
-- pretend they don't exist and implement them yourself.

isPrime :: Int -> Bool 
isPrime n 
    | n < 2 = False   
    | otherwise = not $ any (\x -> mod n x == 0) [2.. isqrt n]

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

-- nth :: Int -> Maybe Integer
-- nth n 
--     | n > 0 = 
--     | otherwise = Nothing 