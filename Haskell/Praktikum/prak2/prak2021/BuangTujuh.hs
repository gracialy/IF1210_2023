module BuangTujuh where    
    buangTujuh :: [Int] -> [Int]
    buangTujuh li =
        if null li then []
        else if (mod (head li) 10 == 7) || (div (head li) 10 == 7) || (mod (head li) 7 == 0) then buangTujuh (tail li)
        else [head li] ++ buangTujuh (tail li)