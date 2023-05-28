module HitungIndeks where
    hitungIndeks :: Float -> Float -> Float -> Int

    hitungIndeks nilaiUTS nilaiUAS nilaiTubes =
        if nilaiUTS>0 && nilaiUAS>0 && nilaiTubes>0 then
            if nilaiTubes<40 then 2
            else
                if nilaiUTS<40 || nilaiUAS<40 then 1
                else 
                    if nilaiUTS<75 && nilaiUAS<75 && nilaiTubes<75 then 2
                    else if nilaiUTS>=75 && nilaiUAS>=75 && nilaiTubes>75 then 4
                    else 3
        else 0

-- SUPER HOTS