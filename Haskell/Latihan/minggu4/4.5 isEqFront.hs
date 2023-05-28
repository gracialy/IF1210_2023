isEmpty :: [Char] -> Bool
    {- isEmpty(l) true jika list elemen l kosong.-}
-- REALISASI
isEmpty l = null l

-- APAKAH POTONGAN DEPAN T2 MENGANDUNG T1 --iseqFront(t1,t2)

-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
{- isEqFront t1 t2 mengembalikan true jika potongan awal
list of character t2 mengandung list of character t1.
asumsikan panjang t2 selalu lebih atau sama dengan t1.
t2 dan t1 tidak kosong -}

isEqFront t1 t2 
    | isEmpty t1 = True
    | head t1 == head t2 = isEqFront (tail t1) (tail t2)
    | head t1 /= head t2 = False

main :: IO()
main = print (isEqFront ['a','b','c'] ['a','b','d','a','b','c'])