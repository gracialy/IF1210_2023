module JamBangun where
    jamBangun :: Int -> Int -> Int -> (Bool, Int, Int, Int)

    jamBangun j m d = 
        {- let selisih j m d = abs(j*3600 + m*60 + d - 7*3600 - 45*60)
        in
            if j<7 || (j==7 && m<45) then (True, div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (selisih j m d) 60)
            else (False, div (selisih j m d) 3600, div (mod (selisih j m d) 3600) 60, mod (selisih j m d) 60) -}
        
        let total_detik_dosen = j * 60 * 60 + m * 60 + d
            total_detik_bangun = 7 * 60 * 60 + 45 * 60 + 0
            selisih = abs(total_detik_dosen - total_detik_bangun)
        in
            if total_detik_dosen < total_detik_bangun then
                (True, div selisih 3600, mod(div selisih 60) 60, mod selisih 60)
            else
                (False, div selisih 3600, mod(div selisih 60) 60, mod selisih 60)