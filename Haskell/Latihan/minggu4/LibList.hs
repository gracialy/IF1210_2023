module LibList where
    -- KONSTRUKTOR LIST --
    konso :: Int -> [Int] -> [Int]
    {- konso(e,l<i>) menghasilkan sebuah list dari e (sebuah
    <integer>) dan l<i> (list of <integer>), dengan e sebagai
    elemen pertama: e o li -> li'-}

    -- REALISASI
    konso e li = [e] ++ li

    konsDot :: [Int] -> Int -> [Int]
    {- konsDot(l<i>,e) menghasilkan sebuah list dari l<i>
    (list of <integer>) dengan e (sebuah <integer>), dengan e
    sebagai elemen terakhir: li • e -> li'-}

    -- REALISASI
    konsDot li e = li ++ [e]


    {-DICTIONARY-}
    {-FirstElmt -> head l   <elemen pertama list>-}
    {-Tail      -> tail l   <list tanpa elemen pertama>-}
    {-LastElmt  -> last l   <elemen terakhir list>-}
    {-Head      -> init l   <list tanpa elemen terakhir-}


    -- PREDIKAT LIST--
    isEmpty :: [Int] -> Bool
    {- isEmpty(l<i>) true jika list of <integer> l<i> kosong-}

    -- REALISASI
    isEmpty li = null li

    isOneElmt :: [Int] -> Bool
    {- isOneElmt(l<i> true jika list of <integer> l<i> hanya
    mempunyai satu elemen-}

    -- REALISASI
    isOneElmt li = (length li)==1

    nbElmt :: [Int] -> Int
    {-nbElmt(l<i>) menghasilkan banyaknya elemen list, nol jika
    list kosong-}

    -- REALISASI
    nbElmt li = if (isEmpty li) then 0       -- basis
                else 1 + (nbElmt (tail li))  -- rekurens

    
    -- OPERASI LIST --
    isMember1 :: Int -> [Int] -> Bool
    {-isMember(x,l) true jika x adalah elemen list l-}
    -- REALISASI isMember1 menggunakan head dan tail
    isMember1 x l = if (isEmpty l) then False -- basis
                   else if (head l) == x then True
                        else (isMember1 x (tail l)) -- rekurens

    isMember2 :: Int -> [Int] -> Bool
    {-isMember2(x,l) true jika x adalah elemen list l-}
    -- REALISASI isMember2 menggunakan init dan last
    isMember2 x l = if (isEmpty l) then False -- basis
                    else if (last l) == x then True
                         else (isMember2 x (init l)) -- rekurens

    copy :: [Int] -> [Int]
    {-copy(l) menghasilkan list yang identik dengan list asal-}
    -- REALISASI (versi 1: menggunakan konso)
    copy l = if (isEmpty l) then []                 -- basis
             else (konso (head l) (copy(tail l)))   -- rekurens
    -- REALISASI (versi 2: menggunakan konsDot)
    copy l = if (isEmpty l) then []                 -- basis
             else (konsDot (copy(init l)) (last l)) -- rekurens

