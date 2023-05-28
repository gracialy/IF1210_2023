-- nilai tengah 3          nilaiTengah a b c

-- DEFINISI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{- nilaiTengah(a,b,c) mengembalikan nilai tengah a, b, c
setelah diurutkan. a, b, c merupakan 3 buah integer yang 
berlainan -}
max3 :: Int -> Int -> Int -> Int
-- max3(a,b,c) mengembalikan nilai maksimum dari a, b, c
min3 :: Int -> Int -> Int -> Int
-- min3(a,b,c) mengembalikan nilai minimum dari a, b, c

-- REALISASI
nilaiTengah a b c
    | (a/=max3 a b c) && (a/=min3 a b c) = a
    | (b/=max3 a b c) && (b/=min3 a b c) = b
    | (c/=max3 a b c) && (c/=min3 a b c) = c

max3 a b c
    | (a>b) && (a>c) = a
    | (b>a) && (b>c) = b
    | (c>a) && (c>b) = c

min3 a b c
    | (a<b) && (a<c) = a
    | (b<a) && (b<c) = b
    | (c<a) && (c<b) = c

-- APLIKASI
-- nilaiTengah 2 3 4

main :: IO()
main = print (nilaiTengah (-1) (-4) 10)