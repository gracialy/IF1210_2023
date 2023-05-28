-- HITUNG BANYAK FAKTOR    - countFactorOfX(n,l)

-- DEFINISI DAN SPESIFIKASI
konso :: Char -> [Char] -> [Char]
    {- konso(e,lc) menghasilkan sebuah list dari e (sebuah
    character) dan lc (list of character), dengan e sebagai
    elemen pertama: e o lc -> lc'-}
-- REALISASI
konso e lc = [e] ++ lc

delNthElmt :: Int -> [Char] -> [Char]
{- delNthElmt(n,l) menghilangkan elemen ke-n dari l.
asumsi: n adalah integer positif dan lebih kecil atau sama
dengan jumlah elemen l. l tidak kosong. -}

-- REALISASI
delNthElmt n l 
    | n==1 = tail l -- basis
    | otherwise = konso (head l) (delNthElmt (n-1) (tail l))

main :: IO()
main = print (delNthElmt 2 ['a','b','c','d','e'])