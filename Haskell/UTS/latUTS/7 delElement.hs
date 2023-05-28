delElement :: Int -> [Int] -> [Int]
{- delElement x l mengembalikan list l dengan elemen x yang
telah dihapus dari l. Jika x bukan elemen l, maka fungsi
mengembalikan l semula. Prekondisi: elemen l unik (setiap
elemen hanya muncul 1 kali). -}

delElement x l =
    if null l then []
    else if (head l) == x then delElement x (tail l)
    else [head l] ++ delElement x (tail l)