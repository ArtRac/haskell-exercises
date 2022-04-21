-- https://projecteuler.net/problem=145
module pe_145 ( ... )

import Test.HUnit

test1 :: Test
test1 = TestCase $ assertEqual "Opis testu1." ({-Oczekiwana wartość-}) ({-Wyliczona wartość-})

test2 :: Test
test2 = TestCase $ assertEqual "Opis testu2." ({-Oczekiwana wartość-}) ({-Wyliczona wartość-})

test :: IO Counts
test = runTestTT $ TestList [test1, test1]

main = error "You need to implement this function"
