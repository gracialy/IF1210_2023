sukuKeN :: Int -> Int
sukuKeN n = (1+3*(n-1)) * (if div n 2 == 0 then (-1) else 1)
-- Q: WHY FAIL?

main :: IO()
main = print (sukuKeN 2)