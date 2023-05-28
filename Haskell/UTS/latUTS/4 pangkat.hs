-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{- pangkat(a,b) menerima masukan dua buah integer a dan b
kemudian menghasilkan a^b berupa integer. perpangkatan
menggunakan algoritma rekursif dengan mengalikan hingga
jumlah pangkat 1. asumsi a>0 dan b>0 -}

-- REALISASI
pangkat a b =
    if b==1 then a
    else a * pangkat a (b-1)

-- CONTOH APLIKASI
-- pangkat 2 1
    -- 2
-- pangkat 5 3
    -- 125