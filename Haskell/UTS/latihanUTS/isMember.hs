isMember :: Int -> [Int] -> Bool
{- isMember x l =
    if null l then False
    else (if head l == x then True else False) || isMember x (tail l) -}


{- or -}
isMember x l = 
    if null l then False
    else if head l == x then True
    else isMember x (tail l)

main :: IO()
main = print (isMember 1 [1,2,3,4,5,1,3,1,2,35,2,33,6,1,5])