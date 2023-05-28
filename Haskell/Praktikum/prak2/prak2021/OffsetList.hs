module OffsetList where
    offsetList :: [Int] -> (Int -> Int) -> [Int]
    offsetList li offset =
        if null li then []
        else [offset (head li)] ++ (offsetList (tail li) offset)

