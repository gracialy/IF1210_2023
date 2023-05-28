module KonversiSuhu where
	-- KONVERSI SUHU - konversiSuhu(t,k)

	-- DEFINISI DAN SPESIFIKASI
	konversiSuhu :: Float -> Char -> Float
	{- konversiSuhu(t,k) menerima suhu t celcius suhu dalam bentuk float dan k 
	bagai satuan suhu yang dituju kemudian mengonversi suhu ke satuan tersebut. 
	asumsikan k='R' adalah Reamur, k='F' adalah Fahrenheit, dan k='K' adalah Kelvin -}

	-- REALISASI
	konversiSuhu t k 
	    | k=='R' = 4/5*t
	    | k=='F' = 9/5*t + 32
	    | k=='K' = t + 273.15

    -- CONTOH APLIKASI
    -- konversiSuhu 25 'R'