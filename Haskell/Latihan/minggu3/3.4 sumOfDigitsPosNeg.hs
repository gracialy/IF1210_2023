-- JUMLAH DIGIT           sumOfDigits(a)

-- DEFINISI DAN SPESIFIKASI
sumOfDigitsPosNeg :: Int -> Int
{- sumOfDigitsPosNeg(a) menghasilkan jumlah digit dari
suatu bilangan negatif (mengabaikan tanda negatif) dan 
positif dengan pendekatan rekursif, basis a>=1 dan a<=9
bernilai a-}

-- REALISASI
sumOfDigitsPosNeg a
    | a>=1 && a<=9 = a -- basis
    | otherwise = sumOfDigitsPosNeg (div (abs a) 10) + mod (abs a) 10 --rekurens

-- APLIKASI
-- sumOfDigitsPosNeg (-45)

main :: IO()
main = print (sumOfDigitsPosNeg (-45))