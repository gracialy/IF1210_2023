-- HITUNG BANYAK FAKTOR    - countFactorOfX(n,l)

-- DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
    {- isEmpty(l<i>) true jika list of <integer> l<i> kosong-}
-- REALISASI
isEmpty li = null li


countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX(n,l) mengembalikan banyaknya kemunculan
bilangan yang merupakan faktor n pada l-}

-- REALISASI
countFactorOfX n l
    | isEmpty l = 0
    | otherwise = (if mod (head l) n == 0 then 1 else 0) + countFactorOfX n (tail l)

main :: IO()
main = print (countFactorOfX 2 [2,4,5,6])