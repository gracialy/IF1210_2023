module LamaTidur where
    lamaTidur :: Int -> Int -> Int -> (Bool, Int, Int, Int)

    lamaTidur j m d = 
        let detikAwal = j*3600 + m*60 + d
            selisih =
                if detikAwal < 5*3600 then 5*3600-detikAwal
                else (5+24)*3600 - detikAwal
        in 
            if selisih>=(6*3600) then (True, div selisih 3600, div (mod selisih 3600) 60, mod selisih 60)
            else (False, div selisih 3600, div (mod selisih 3600) 60, mod selisih 60)

-- A LITTLE BIT MORE HOTS