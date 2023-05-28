-- APAKAH GANJIL?           isGanjil(x)

-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{- isGanjil(x) menentukan suatu bilangan bulat>=0 adalah 
bilangan ganjil sesuai dengan pendekatan rekursif 
dengan basis x=1 ganjil (true) dan x=0 genap (false) -}

-- REALISASI
isGanjil x
    | x==1 = True -- basis
    | x==0 = False -- basis
    | otherwise = isGanjil(x-2) --rekurens

-- APLIKASI
-- isGanjil 3

main :: IO()
main = print (isGanjil 13)