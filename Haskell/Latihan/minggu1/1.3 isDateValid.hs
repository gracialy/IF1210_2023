-- APAKAH DATE VALID?           isDateValid(d,m,y)

-- DEFINISI DAN SPESIFIKASI
isDateValid :: Int -> Int -> Int -> Bool
{- isDateValid(d,m,y) mengembalikan niai true jika d, m, y
membentuk date yang valid. Definisi date yang valid adalah
jika elemen hari (d) bernilai antara 1 dan 31, tergantung
pada bulan dan apakah tahun kabisat atau bukan, elemen
bulan (m) bernilai antara 1 dan 12, Nilai y mewakili tahun
bernilai antara 0 dan 99. Nilai y mewakili tahun 1900 s.d.
1999 -}
dateMax :: Int -> Int -> Int
{- dateMax(m,y) mengembalikan hari maksimum suatu bulan (m)
dan tahun (y)-}
isLeapYear :: Int -> Bool
{- isLapYear(y) mengembalikan nilai true jika y adalah
tahun kabisat -}

-- REALISASI
isDateValid d m y =
    (d>=1) && (d<=dateMax m y) && (m>=1) && (m<=12) && (y>=0) && (y<=99)

dateMax m y 
    | (mod m 2 == 1 && m<=7) || (even m && m>=8) = 31
    | m==2 =
        if isLeapYear y then 29
        else 28
    | otherwise = 30

isLeapYear y 
    | (mod (1900+y) 4 == 0 && mod (1900+y) 100 /= 0) || (mod (1900+y) 400 == 0) = True
    | otherwise = False


-- APLIKASI
-- isDateValid 12 01 23

main :: IO()
main = print (isDateValid 29 02 96)