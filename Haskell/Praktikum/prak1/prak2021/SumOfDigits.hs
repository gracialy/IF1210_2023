module SumofDigits where
    sumOfDigits :: Int -> Int

    sumOfDigits n
        | n<=9 = n
        | otherwise = sumOfDigits (div n 10) + mod n 10
