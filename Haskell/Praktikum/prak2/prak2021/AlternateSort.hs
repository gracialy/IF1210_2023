module AlternateSort where
    minElmt :: [Int] -> Int
    minElmt l =
        if length l == 1 then head l
        else if head l > minElmt (tail l) then minElmt (tail l)
        else head l

    del :: Int -> [Int] -> [Int]
    del val l =
        if null l then []
        else if val == (head l) then tail l
        else [head l] ++ del val (tail l)

    sort :: [Int] -> [Int]
    sort l =
        if null l then l
        else [minElmt l] ++ (sort (del (minElmt l) l))
    

    alternateSort :: [Int] -> [Int]
    alternateSort l =
        if null l || length l == 1 then l
        else [head (sort l)] ++ ([last (sort l)] ++ alternateSort (init (tail (sort l))))
