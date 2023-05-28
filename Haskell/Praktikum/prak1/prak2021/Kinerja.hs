module Kinerja where
    kinerja :: Int -> Int -> Int -> (Int, Int, Int, Int)
    

    kinerja h min s =
        let detikSelesai = h*3600 + min*60 + s
            detikStandar = 17*3600 + 30*60
            selisih = abs(detikSelesai-detikStandar)
        in
            if detikSelesai>detikStandar then (div selisih 3600, div (mod selisih 3600) 60, mod selisih 60, -1)
            else if detikSelesai==detikStandar then (0,0,0,0)
            else (div selisih 3600, div (mod selisih 3600) 60, mod selisih 60, 1)

        {- (div (abs(selisih_detik)) 3600, div (mod (abs(selisih_detik)) 3600) 60, mod (mod (abs(selisih_detik)) 3600) 60,
        if (selisih_detik < 0) then -1
        else if (selisih_detik > 0) then 1
        else 0) -}