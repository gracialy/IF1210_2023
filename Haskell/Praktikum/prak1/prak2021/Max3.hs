module Max3 where
    max3 :: Int -> Int -> Int -> Int
    {- max3(a,b,c) menghasilkan nilai terbesar
    dari antara ketiga integer a b c-}

    max3 a b c 
        | a>b && a>c = a
        | b>a && b>c = b
        | c>a && c>b = c
