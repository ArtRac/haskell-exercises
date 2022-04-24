import Control.Monad.Writer

dzielniki :: Int -> [Int]
dzielniki n = [ x | x <- [1..n-1], mod n x == 0]

