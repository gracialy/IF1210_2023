module SumKelipatanX where
    sumKelipatanX :: Int -> Int -> Int -> Int

    sumKelipatanX m n x
        | m==n = (if mod m x == 0 then m else 0)
        | otherwise =
            if mod m x == 0 then m + sumKelipatanX (m+1) n x
            else sumKelipatanX (m+1) n x
            
