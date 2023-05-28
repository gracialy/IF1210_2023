-- Mean Olympique           mo a b c d

-- DEFINISI DAN SPESIFIKASI
mo :: Float -> Float -> Float -> Float -> Float
{- mo a b c d menghasilkan harga rata-rata dari dua di
antara a, b, c, d, dengan mengabaikan nilai terbesar dan
nilai terkecil -}

-- REALISASI
-- versi tanpa "abstraksi"
mo a b c d =
    let maxab = (a+b+abs(a-b))/2 -- mencari max 2 bil
        maxcd = (c+d+abs(c-d))/2 -- mencari min 2 bil
        minab = (a+b-abs(a-b))/2
        mincd = (c+d-abs(c-d))/2
    in
        let maks = (maxab+maxcd+abs(maxab-maxcd))/2
            min = (minab+mincd-abs(minab-mincd))/2
        in
            (a+b+c+d-maks-min)/2

main :: IO()
main = print (mo 2 3 4 5)
