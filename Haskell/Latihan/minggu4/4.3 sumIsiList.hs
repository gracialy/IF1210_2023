isEmpty :: [Int] -> Bool
    {- isEmpty(l) true jika list elemen l kosong.-}
-- REALISASI
isEmpty l = null l

-- JUMLAH ISI LIST -- sumIsiLIst(li)

-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{- sumIsiList(l) menghitung hasil penjumlahan seluruh elemen
sebuah list of integer l yang tidak kosong -}

-- REALISASI
sumIsiList l 
    | isEmpty l = 0
    | otherwise = head l + sumIsiList (tail l)

main :: IO()
main = print (sumIsiList [1,2,3])
