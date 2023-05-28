module NbKelipatanX where
	-- KELIPATAN - nbKelipatanX(m,n,x)

	-- DEFINISI DAN SPESIFIKASI
	nbKelipatanX :: Int -> Int -> Int -> Int
	{- nbKelipatanX(m,n,x) menerima m dan n range dalam bentuk integer dan
	mencari banyak kelipatan x di antara m dan n, asumsi m<=n dan x<=n-}

	-- REALISASI
	nbKelipatanX m n x
	    | m==n && mod m x == 0 = 1 -- basis
	    | m==n && mod m x /= 0 = 0 -- basis
	    | m/=n && mod m x == 0 = 1 + nbKelipatanX (m+1) n x -- rekursif
	    | otherwise = 0 + nbKelipatanX (m+1) n x -- rekursif