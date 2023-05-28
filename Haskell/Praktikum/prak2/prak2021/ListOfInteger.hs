module ListOfInteger where
    nbElmt :: [Int] -> Int
    nbElmt li =
        if null li then 0
        else 1 + nbElmt (tail li)

    elmtKeN :: [Int] -> Int -> Int
    elmtKeN li n =
        if n==1 then head li
        else elmtKeN (tail li) (n-1)
    
    nbOcc :: [Int] -> Int -> Int
    nbOcc li n =
        if null li then 0
        else if head li == n then 1 + nbOcc (tail li) n
        else nbOcc (tail li) n

    listPlus :: [Int] -> [Int] -> [Int]
    listPlus l1 l2 =
        if null l1 then []
        else [head l1 + head l2] ++ (listPlus (tail l1) (tail l2))


    isMember :: Int -> [Int] -> Bool
    isMember n li =
        if null li then False
        else if n == head li then True
        else isMember n (tail li)
    
    setDiff :: [Int] -> [Int] -> [Int]
    setDiff l1 l2 =
        if null l1 then []
        else if isMember (head l1) l2 then setDiff (tail l1) l2
        else [head l1] ++ (setDiff (tail l1) l2)

    
    
    


