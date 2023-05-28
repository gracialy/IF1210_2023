module SeleksiKerja where
    seleksi :: Int -> Int -> Char -> Bool
    {- seleksi(m,s,p) dengan m lama pengalaman managerial,
    s lama pengalaman sw, dan p pekerjaan yang diinginkan.
    m dan s dalam integer>=0-}

    seleksi m s p 
        | p=='A' = m>=2 && s>=4
        | p=='B' = s>=4
        | p=='C' = True
        | p=='D' = m>=2

-- HOTS