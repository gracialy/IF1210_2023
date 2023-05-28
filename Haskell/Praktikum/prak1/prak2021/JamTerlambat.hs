module JamTerlambat where
    jamTerlambat :: Int -> Int -> Int -> (Int, Int, Int, Bool, Int)

    jamTerlambat h m d = 
        {-let selisih j m d = abs(j*3600 + m*60 + d - 8*3600 - 30*60)
        in
            if (j==8 && ((m==30 && d>0) || m>30)) || j>8 then (div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (selisih j m d) 60, True, (selisih j m d)*10)
            else (div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (selisih j m d) 60, False, 0)-}
        let jamMulaiToDetik = (8 * 3600) + (30 * 60)
            jamMasukToDetik = (h * 3600) + (m * 60) + d
            selisihDetik = 
                if jamMulaiToDetik < jamMasukToDetik then jamMasukToDetik - jamMulaiToDetik
                else jamMulaiToDetik - jamMasukToDetik
        in (div selisihDetik 3600,
        div (mod selisihDetik 3600) 60,
        mod (mod selisihDetik 3600) 60,
        jamMulaiToDetik < jamMasukToDetik,
        if jamMulaiToDetik < jamMasukToDetik then selisihDetik*10 else 0)

-- PRETTY HOTS ~ JamLembur