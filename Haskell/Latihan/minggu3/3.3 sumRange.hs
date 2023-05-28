-- RENTANG BILANGAN           sumRange(a,b)

-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int 
{- sumRange(a,b) dengan a<=b, a dan b bilangan positif
menghasilkan penjumlahan semua bilangan dari a s.d. b 
sesuai dengan pendekatan rekursif. basis a>b bernilai 0 -}

-- REALISASI
sumRange a b
    | a>b = 0 -- basis
    | a<=b = sumRange (a+1) b + a --rekurens

-- APLIKASI
-- sumRange 2 3

main :: IO()
main = print (sumRange 2 4)