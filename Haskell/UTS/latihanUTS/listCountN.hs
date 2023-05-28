isEmpty :: [Int] -> Bool
{- isEmpty l true jika list of elemen l kosong, false jika tidak -}
isEmpty l = l == []

konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e dan li dengan e sebagai
  elemen pertama -}
konso e li = e : li

nbX :: [Int] -> Int -> Int
{- nbX l x menghasilkan banyaknya kemunculan x di l -}
nbX l x =
  if isEmpty l then 0
  else if (head l) == x then 1 + nbX (tail l) x
  else nbX (tail l) x

isMember :: Int -> [Int] -> Bool
{- isMember x l menghsilkan true jika x adalah elemen l -}
isMember x l =
  if isEmpty l then False
  else if (head l) == x then True
  else isMember x (tail l)

removeElmt :: [Int] -> Int -> [Int]
{- removeElmt l x menghasilkan list l tanpa elemen bernilai x paling awal/
  depan, jika x ada di l. Jika x tidak ada di l, l tetap. -}
removeElmt l x =
  if isEmpty l then []
  else if (head l) == x then (tail l)
  else konso (head l) (removeElmt (tail l) x)


listCountN :: [Int] -> Int -> ([Int], Int)
{- listCount l n menghasilkan pasangan nilai (l1,m) dengan l1 adalah list unik
  yang berisi elemen-elemen l yang muncul sebanyak n, dan m adalah banyaknya elemen
  l1 alias banyaknya elemen l yang muncul sebanyak n. -}

-- REALISASI
listCountN l n =                       
    let (l1, m) = listCountN (tail l) n
    in
        if isEmpty l then ([], 0) 
        else if nbX l (head l) == n then (konso (head l) l1, m + 1)
        else if isMember (head l) l1 then (removeElmt l1 (head l), m - 1)
        else (l1, m)

main :: IO()
main = print (listCountN [] 3)