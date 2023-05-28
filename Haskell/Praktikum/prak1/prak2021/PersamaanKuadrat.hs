module PersamaanKuadrat where
    -- PERSAMAAN KUADRAT - persamaanKuadrat(a,b,c,x)

    -- DEFINISI DAN SPESIFIKASI
    persamaanKuadrat :: Int -> Int -> Int -> Int -> Int
    {- persamaanKuadrat(a,b,c, x) menghasilkan nilai persamaan
    kuadrat formula ax^2+bx+c untuk suatu nilai x dengan a, b,
    c, dan x integer -}

    -- REALISASI
    persamaanKuadrat a b c x = a*x*x + b*x + c