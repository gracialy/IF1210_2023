module HappyFive where
    happyFive :: [Int] -> [Int]
    happyFive li =
        if null li then []
        else if (mod (head li) 5 == 0) || (div (head li) 10 == 5) || (mod (head li ) 10 == 5) then [head li] ++ happyFive (tail li)
        else happyFive (tail li)
