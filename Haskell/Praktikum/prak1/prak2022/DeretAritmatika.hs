module DeretAritmatika where
	-- DERET ARITMATIKA - deretAritmatika(n,a,b)

	-- DEFINISI DAN SPESIFIKASI
	deretAritmatika :: Int -> Int -> Int -> Float
	{- deretAritmatika(n,a,b) menerima masukan 3 integer yaitu a sebagai suku
	pertama dan b sebagai beda dari barisan aritmatika. Fungsi akan
	mengembalikan jumlah n suku pertama dari barisan aritmatika tersebut-}

	-- REALISASI
	deretAritmatika n a b = fromIntegral (n*(2*a + (n-1)*b))/2

    -- CONTOH APLIKASI
    -- deretAritmatika 4 4 5