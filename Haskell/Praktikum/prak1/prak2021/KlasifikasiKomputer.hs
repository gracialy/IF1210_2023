module KlasifikasiKomputer where
    klasifikasi :: Int -> Int -> Int -> Int

    klasifikasi cpu gpu hd =
        if cpu<2 || gpu<2 || hd<2 then 1
        else
            if cpu<5 || gpu<5 then 2
            else
                if cpu<=7 && gpu<=7 && hd<=7 then 3
                else
                    if cpu>7 && gpu>7 && hd>7 then 5
                    else 4

-- PRETTY HOTS


