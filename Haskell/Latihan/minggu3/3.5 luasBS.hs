-- LUAS BUJUR SANGKAR           luasBS(a)

-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int
{- luasBS(a) menghasilkan luas bujur sangkar sisi a 
(bilangan bulat) dengan pendekatan rekursif. Basis a=1
memiliki luas 1-}

-- REALISASI
luasBS a
    | a==1 = 1 -- basis
    | a>1 = luasBS (a-1) + 2*a-1 --rekurens

-- APLIKASI
-- luasBS 3

main :: IO()
main = print (luasBS 2)