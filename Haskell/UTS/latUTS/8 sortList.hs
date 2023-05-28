-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 


delElement :: Int -> [Int] -> [Int]
{- delElement x l mengembalikan list l dengan elemen x yang
telah dihapus dari l. Jika x bukan elemen l, maka fungsi
mengembalikan l semula. Prekondisi: elemen l unik (setiap
elemen hanya muncul 1 kali). -}

delElement x l =
    if null l then []
    else if (head l) == x then delElement x (tail l)
    else [head l] ++ delElement x (tail l)

getSmallest :: [Int] -> Int
{- getSmallest l mengembalikan elemen terkecil di l.
Prekondisi: l tidak kosong -}

getSmallest l 
    | length l == 1 = head l
    | otherwise =
        if (head l)<(getSmallest (tail l)) then head l
        else getSmallest (tail l)

sortList :: [Int] -> [Int]
{- sortList l mengembalikan hasil pengurutan list l hingga
elemen elemennya terurut dari membesar. Prekonsisi: l tidak
kosong dan semua elemennya unik -}

-- REALISASI
{- sortList l
    | isOneElmt l = l                                                                                  
    | otherwise = 
        if head l < head (sortList (tail l)) then konso (head l) (sortList (tail l))
        else konso (head (sortList (tail l))) (sortList (konso (head l) (tail (sortList (tail l))))) -}

sortList l =
    if isOneElmt l then l
    else konso (getSmallest l) (sortList (delElement (getSmallest l) l))

main :: IO()
main = print (sortList [6,15,4,9])