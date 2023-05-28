module ListIndex where
    listIndex :: [Int] -> (Int -> Char) -> [Char]
    listIndex l f =
        if null l then []
        else [f (head l)] ++ (listIndex (tail l) f)

