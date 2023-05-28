module SumOfDigits where
    -- SUM OF DIGITS - sumOfDigits(n)

    -- DEFINISI DAN SPESIFIKASI
    sumOfDigits :: Int -> Int
    -- sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
    -- asumsi n>=0

    -- REALISASI
    sumOfDigits n =
        if n<=9 then n
        else sumOfDigits (div n 10) + mod n 10