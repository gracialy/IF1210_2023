prevNSeconds :: Int -> Int -> Int -> Int -> (Int, Int, Int)
prevNSeconds j m d n =
    let secs = mod (j*3600 + m*60 + d - n) (24*3600)
    in (div secs 3600, 
    div (mod secs 3600) 60, 
    mod secs 60)

main :: IO()
main = print (prevNSeconds 0 0 0 60)