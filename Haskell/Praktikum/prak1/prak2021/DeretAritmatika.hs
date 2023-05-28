module DeretAritmatika where
    -- DERET ARITMATIKA - deretAritmatika(n,a,b)

    -- DEFINISI DAN SPESIFIKASI
    deretAritmatika :: Int -> Int -> Int -> Float
    {- deretAritmatika(n,a,b) menghasilkan jumlah n suku pertama dari 
	barisan aritmatika dengan parameter a suku pertama, b beda, n banyak
	banyak suku. a, b, dan n integer -}

    -- REALISASI
    deretAritmatika n a b = fromIntegral (n * (2*a + (n-1)*b)) / 2
    -- fromIntegral: change Int to Float (interchangable)

    -- CONTOH APLIKASI
    -- deretAritmatika 1 2 3