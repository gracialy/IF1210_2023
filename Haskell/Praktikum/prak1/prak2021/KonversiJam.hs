module KonversiJam where
    konversiJam :: Int -> Int -> Int -> (Bool, Int, Int, Int)

    konversiJam j m d =
        let jamEropa j = if j-7>=0 then j-7 else j+24-7
        in
            if j-7>=0 then (False, jamEropa j, m, d)
            else (True, jamEropa j, m, d)