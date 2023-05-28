module HitungIndeks where
	-- HITUNG INDEKS - hitungIndeks(nilaiUTS, nilaiUAS, nilaiTubes)

	-- DEFINISI DAN SPESIFIKASI
	hitungIndeks :: Float -> Float -> Float -> Int
	{- hitungIndeks(nilaiUTS, nilaiUAS, nilaiTubes) menerima 3 nilai bertipe float
	kemudian mengeluarkan indeks mahasiswa dalam bentuk integer dengan beberapa 
	aturan penilaian -}

	-- REALISASI
	hitungIndeks nilaiUTS nilaiUAS nilaiTubes
	    | nilaiUTS==0 || nilaiUAS==0 || nilaiTubes==0 = 0
	    | nilaiUTS<40 || nilaiUAS<40 = 1
	    | nilaiUTS>=75 && nilaiUAS>=75 && nilaiTubes>=75 = 4
	    | nilaiTubes<40 = 2
	    | nilaiUTS<75 && nilaiUAS<75 && nilaiTubes<75 = 2
	    | otherwise = 3


	-- CONTOH APLIKASI
	-- hitungIndeks 100 100 0
