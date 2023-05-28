-- FILTER LIST -- filterList(li,f)

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
(list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li
    
-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l


-- FUNGSI F
isPos :: Int -> Bool
isPos a = if a>0 then True else False

isNeg :: Int -> Bool
isNeg a = if a<0 then True else False

isKabisat :: Int -> Bool
isKabisat a =
    if (mod a 4 == 0 && mod a 100 /= 0) || (mod a 400 == 0) then True
    else False

-- DEFINISI DAN SPESIFIKASI LIST
filterList :: [Int] -> (Int -> Bool) -> [Int]
{- filterList(li,f) melakukan filter terhadap elemen li
    (list of integer) dan mengembalikan list of integer
    yang memenuhi kriteria filter f -}
-- REALISASI
filterList li f
    | isEmpty li = []
    | f (head li) = konso (head li) (filterList (tail li) f)
    | not (f (head li)) = filterList (tail li) f

-- CONTOH APLIKASI
-- filterList [2,3,-5,-7,2000,2004,1902] isPos
    -- [2,3,2000,2004,1902]
-- filterList [2,3,-5,-7,2000,2004,1902] isNeg
    -- [-5,-7]
-- filterList [2,3,4,-5,-7,2000,2004,1902] isKabisat
    -- [2000,2004]
-- filterList [2,3,4,5] (\x -> (mod x 2) == 0)
    -- [2,4]