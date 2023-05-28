module JamTerlambat where
	-- JAM TERLAMBAT - jamTerlambat(j, m, d)

	-- DEFINISI DAN SPESIFIKASI
    detik :: Int -> Int -> Int -> Int
    {- mengonversi jam j, menit m, dan detik d ke dalam detik-}
    selisih :: Int -> Int -> Int -> Int
    {- menghitung selisih detik jam j, menit m, dan detik d terhadap 8.30-}

    jamTerlambat :: Int -> Int -> Int -> (Int, Int, Int, Bool, Int)
    {- jamTerlambat(j, m,d) menerima jam, menit, dan detik Yukirin tiba dalam
	bentuk integer dan memeriksa apakah Yukirin terlambat dari jam 8.30. Fungsi
	mengembalikan tuple berisi selisih jam, menit, dan detik Yukirin tiba dari waktu
	jadwal, Boolean apakah Yukirin terlambat, dan tingkat kekecewaan penonton yang dikali 10
	setiap selisih menit-}

    -- REALISASI
    detik j m d = j*3600 + m*60 + d
    selisih j m d = abs(j*3600 + m*60 + d - 8*3600 - 30*60)

    jamTerlambat j m d =
	    if (detik j m d)> (detik 8 30 0) then (div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (mod (selisih j m d) 3600) 60, True, (selisih j m d) *10)
	    else (div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (mod (selisih j m d) 3600) 60, False, 0)

