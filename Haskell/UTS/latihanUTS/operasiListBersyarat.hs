operasiListBersyarat :: [Int] -> [Int] -> (Int -> Bool) -> (Int -> Int -> Int) -> [Int]
operasiListBersyarat l1 l2 f g =
    if null l1 then []
    else if (f (head l1)) || (f (head l2)) then [g (head l1) (head l2)] ++ (operasiListBersyarat (tail l1) (tail l2) f g)
    else operasiListBersyarat (tail l1) (tail l2) f g

main :: IO()
main = print (operasiListBersyarat [2,-4,8] [-1,-3,5] (\x -> x>0) (\x y -> abs (x-y)))
    
-- operasiListBersyarat [-1,2,3] [4,5,-6] (\x -> (x<0 && mod x 2 == 0)||(x>=0 && mod x 2 /= 0)) (\x y -> x*y))

-- operasiListBersyarat [2,-4,8] [-1,-3,5] (\x -> x>0) (\x y -> abs (x-y))
