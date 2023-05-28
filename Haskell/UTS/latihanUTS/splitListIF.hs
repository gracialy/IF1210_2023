splitListIF :: [Int] -> (Int -> Bool) -> ([Int], [Int])
splitListIF li f =
    let (get, out) = splitListIF (tail li) f
    in if null li then ([],[])
    else if f (head li) then ([head li] ++ get, out)
    else (get, [head li] ++ out)

main :: IO()
main = print(splitListIF [1,2,3,4,5,6,7] (\x -> x>5))