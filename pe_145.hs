-- https://projecteuler.net/problem=145
--module pe_145 ( ... )

import Test.HUnit
import Distribution.Simple.Utils (xargs)
import GHC.Real (odd)
import Data.IntMap (fold)

testAll :: IO Counts
testAll = runTestTT $ TestList [
    TestCase $ assertEqual "Dla liczb poniżej 10^3." 120 (pe145 1000)
    ]

pe145 :: Int -> Int
pe145 p = sum [ 1 | x <- [1..(p-1)],  
    mod x 10 /= 0, 
    let y = intReverse x,
    odd (x+y),
    isReversible (x + y)]

intReverse :: Int -> Int
intReverse x = read $ reverse $ show x :: Int

isReversible:: Int -> Bool
isReversible x
    | x <= 9         = odd x
    | x > 9 && odd x = isReversible $ div x 10
    | otherwise      = False
