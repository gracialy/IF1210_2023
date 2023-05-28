-- DERET SEGITIGA          deretSegitiga(x)

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{- deretSegitiga(x) adalah deret segitiga sesuai dengan
definisi rekursif deret dengan basis x=1 -}

-- REALISASI
deretSegitiga x
    | x==1 = 1 -- basis
    | otherwise = deretSegitiga(x-1)+x --rekurens

-- APLIKASI
-- deretSegitiga 3

main :: IO()
main = print (deretSegitiga 5)