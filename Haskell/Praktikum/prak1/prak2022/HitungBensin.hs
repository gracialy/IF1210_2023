module HitungBensin where
    hitungBiaya :: Int -> Int
    hitungBiaya x 
        | x==1 = 0
        | mod x 2 == 0 = 1 + hitungBiaya (div x 2)
        | otherwise = 1 + hitungBiaya (x*3+1)

    hitungBensin :: Int -> Int -> Int
    hitungBensin a b    
        | a==b = hitungBiaya a
        | otherwise = (hitungBiaya b) + hitungBensin a (b-1)