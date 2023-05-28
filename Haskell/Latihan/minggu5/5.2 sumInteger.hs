-- JUMLAH BILANGAN -- sumInteger(m,n,f)

-- DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
{- sumInteger(m,n,f) menerima integer m dan n sebagai suatu
selang. Fungsi mengembalikan jumlah dari angka-angka pada
selang yang memenuhi filter f -}

-- REALISASI
sumInteger m n f =
    if m>=(n+1) then 0
    else if f (m) then m + sumInteger (m+1) n f
    else sumInteger (m+1) n f

-- CONTOH APLIKASI
-- sumInteger 1 100 (\x -> mod x 100 == 0)
    -- 100
-- sumInteger 1 100 (\x -> (mod x 2 == 0 && mod x 10 == 0) || (mod x 2 /= 0 && mod x 5 == 0))
    -- 1050
-- sumInteger 25 25 (\x -> x<10)
    -- 0