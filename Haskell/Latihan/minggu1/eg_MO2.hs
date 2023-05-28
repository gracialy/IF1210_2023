-- Mean Olympique           mo a b c d

-- DEFINISI DAN SPESIFIKASI
mo2 :: Int -> Int -> Int -> Int -> Float
{- mo a b c d menghasilkan harga rata-rata dari dua di
antara a, b, c, d, dengan mengabaikan nilai terbesar dan
nilai terkecil -}
max4 :: Int -> Int -> Int -> Int -> Int
-- max4 a b c d menghasilkan maksimum dari a, b, c, d
min4 :: Int -> Int -> Int -> Int -> Int
-- min4 a b c d menghasilkan minimum dari a, b, c, d
max2 :: Int -> Int -> Int
-- max2 a b menghasilkan maksimum dari a, b
min2 :: Int -> Int -> Int
-- min2 a b menghasilkan minimum dari a, b

-- REALISASI
-- versi dengan "abstraksi"
max2 a b = div (a+b+abs(a-b)) 2 -- Q: why /2 error?
min2 a b = div (a+b-abs(a-b)) 2
max4 a b c d = max2 (max2 a b) (max2 c d)
min4 a b c d = min2 (min2 a b) (min2 c d)
mo2 a b c d = fromIntegral (a+b+c+d-max4 a b c d-min4 a b c d)/2
-- (kadang max4 min4 sudah tersedia)
-- fromIntegral: Int -> Float

main :: IO()
main = print (mo2 2 3 4 5)
