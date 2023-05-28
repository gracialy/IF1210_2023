isEmpty :: [Int] -> Bool
    {- isEmpty(l) true jika list elemen l kosong.-}
-- REALISASI
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
    {- konso(e,lc) menghasilkan sebuah list dari e (sebuah
    character) dan lc (list of character), dengan e sebagai
    elemen pertama: e o lc -> lc'-}
-- REALISASI
konso e lc = [e] ++ lc

-- FILTER GANJIL -- filterGanjil(li)

-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
{- filterGanjil(li) mengembalikan list of integer yang 
terdiri dari bilangan ganjil dalam li (list of integer), 
li mungkin kosong. asumsikan semua elemen li integer positif atau 0-}

-- REALISASI
filterGanjil li
    | isEmpty li = []
    | mod (head li) 2 == 1 = konso (head li) (filterGanjil (tail li))
    | mod (head li) 2 == 0 = filterGanjil (tail li)

main :: IO()
main = print (filterGanjil [4,7,11,9,80])