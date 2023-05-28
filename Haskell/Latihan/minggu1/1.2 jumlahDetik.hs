-- JUMLAH DETIK         jumlahDetik(j,m,d)

-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
{- jumlahDetik(j,m,d) mengonversi jam dan menit menjadi detik dan menjumlahkan keseluruhan detik -}

-- REALISASI
jumlahDetik j m d = (j*3600) + (m*60) + d

-- APLIKASI
-- jumlahDetik 12 01 23
main :: IO()
main = print (jumlahDetik 3 40 50)