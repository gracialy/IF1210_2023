thp :: Bool -> Int -> Int
thp p d 
    | p==True && d>=15 = 5000000 + (if d>20 then 100000*(d-20) else 0)
    | p==True && d<15 = 200000*d
    | p==False = 150000*(if d<=20 then d else 20) + (if d>20 then 175000*(d-20) else 0)

main :: IO()
main = print (thp False 21)