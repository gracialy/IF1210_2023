ubahArah :: Int -> Int -> Int
{- ubahArah adalah fungsi yang menerima masukan dua buah
integer s dan r yang merepresentasikan arah pergerakan dan
besar perubahan arah yang akan dilakukan (dalam satu derajat). 
Fungsi mengembalikan arah pergerakan yang baru dalam range 
0 s.d. 359, setelah s diputar sebesar r. -}

-- REALISASI
ubahArah s r = mod (s+r) 360

-- CONTOH APLIKASI
-- ubahArah 0 (-39)
    -- 270
-- ubahArah 45 350
    -- 35