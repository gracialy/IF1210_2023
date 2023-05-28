module LuasLayang where
    -- LUAS LAYANG - layang(d1,d2)

    -- DEFINISI DAN SPESIFIKASI
    layang :: Int -> Int -> Float
    {- layang d1 d2 menerima d1 dan d2 sebagai integer yaitu
    kedua diagonal layang-layang dan menghailkan luasnya-}
    
    -- REALISASI
    layang d1 d2 = 1/2 * fromIntegral d1 * fromIntegral d2

    -- CONTOH APLIKASI
    -- layang 3 7