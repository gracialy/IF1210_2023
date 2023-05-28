module KonversiSuhu where
    -- DEFINISI DAN SPESIFIKASI
    konversiSuhu :: Float -> Char -> Float
    {- mengubah suhu t celcius bernilai bilangan real ke 
    satuan suhu k -}

    -- REALISASI
    konversiSuhu t k 
        | k=='R' = 4/5*t
        | k=='F' = 9/5*t + 32
        | k=='K' = t + 273.15
    
    -- CONTOH APLIKASI
    -- konversiSuhu 25 'R'
    
