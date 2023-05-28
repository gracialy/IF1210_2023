isAllGanjil :: [Int] -> Bool
{- isAllGanjil l mengembalikan true apabila seluruh elemen
l adalah bilanan ganjil. Fungsi mengembalikan true jika
l adalah list kosong -}

isAllGanjil l =
    if null l then True
    else (mod (head l) 2 /= 0) && (isAllGanjil (tail l))