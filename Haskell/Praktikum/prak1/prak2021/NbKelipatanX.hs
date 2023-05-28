module NbKelipatanX where
    nbKelipatanX :: Int -> Int -> Int -> Int

    nbKelipatanX m n x 
        | m==n && mod n x == 0 = 1
        | m==n && mod n x /= 0 = 0
        | m/=n && mod n x == 0 = 1 + nbKelipatanX m (n-1) x
        | otherwise = nbKelipatanX m (n-1) x 
