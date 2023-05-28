nbX :: [Int] -> Int -> Int
nbX l x =
    if null l then 0
    else (if head l == x then 1 else 0) + nbX (tail l) x

main :: IO()
main = print (nbX [1,2,3,4,5,1,3,1,2,35,2,33,6,1,5] 1)