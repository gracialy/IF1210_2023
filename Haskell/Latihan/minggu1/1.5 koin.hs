-- konversi koin          koin q d n p

-- DEFINISI DAN SPESIFIKASI
koin :: Int -> Int -> Int -> Int -> (Int, Int)
{- koin(q,d,n,p) menerima input sejumlah koin quarter (q),
dime (d), nickel (n), penny (p) dan menghasilkan total koin
tersebut dalam jumlah dollar dan sen. Konversi koin adalah
1 quarter = 25 sen, 1 dime = 10 sen, 1 nickel = 5 sen dan
1 penny = 1 sen serta 1 dollar = 100 sen -}
sen :: Int -> Int -> Int -> Int -> Int
-- sen(q,d,n,p) menghitung total koin dalam sen

-- REALISASI
koin q d n p = (div (sen q d n p) 100, mod (sen q d n p) 100)

sen q d n p = q*25 + d*10 + n*5 + p

-- APLIKASI
-- koin 8 20 30 77

main :: IO()
main = print (koin 1 1 1 1)