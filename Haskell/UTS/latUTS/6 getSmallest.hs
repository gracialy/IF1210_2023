getSmallest :: [Int] -> Int
{- getSmallest l mengembalikan elemen terkecil di l.
Prekondisi: l tidak kosong -}

getSmallest l 
    | length l == 1 = head l
    | otherwise =
        if (head l)<(getSmallest (tail l)) then head l
        else getSmallest (tail l)