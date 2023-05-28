{-alternatingOddEven :: [Int] -> Bool
alternatingOddEven l =
    let 
        first = mod (head l) 2
        sec = mod (head (tail l)) 2
    in
        if null l then True
        else if length l == 1 then True
        else if first == sec then False
        else alternatingOddEven (tail l)-}

-- or

alternatingOddEven l =
    if null l || length l == 1 then True
    else if (mod (head l) 2) /= (mod (head (tail l)) 2) then 
        alternatingOddEven (tail l)
    else False

isPalindrome :: [Int] -> Bool
isPalindrome l =
    if null l then True
    else if length l == 1 then True
    else if head l /= last l then False
    else isPalindrome (tail (init l))


compress :: [Int] -> [Int]
{- Fungsi menerima input list of integer dengan asumsi tiap elemen list dipastikan dapat berulang beberapa kali secara 
berurutan, namun tidak bisa berulang lagi jika sudah dipisahkan dengan bilangan integer lain. Contoh : 
[1,1,1,3,3,4,5,5,5,6] memenuhi syarat , namun [1,1,2,2,1,3,3,4,4] tidak memenuhi karena terdapat angka 1
yang dipisahkan oleh bilangan lain, yaitu 2.
Selanjutnya fungsi compress akan menghapus elemen-elemen yang berulang lebih dari sekali sehingga list yang 
dikeluarkan adalah list dengan elemen-elemen yang unik. Contoh :
[1,1,2,2,2,3,4] dikompres akan menjadi [1,2,3,4]
Prekondisi list tidak kosong-}
{-compress l =
    let comp = compress (tail l)
    in 
        if length l == 1 then l
        else if head l /= head comp then [head l] ++ comp
        else comp-}

-- or

compress l =
    if length l == 1 then l
    else if head l == head (tail l) then compress (tail l)
    else [head l] ++ compress (tail l)

minAndMaxIdxOf :: Int -> [Int] -> (Int, Int)
minAndMaxIdxOf x l =
    let (min,max) = minAndMaxIdxOf x (tail l)
    in
        if length l == 1 then
            if head l /= x then (-1,-1)
            else (1,1)
        else if head l == x then
            if max == -1 then (1,1) -- or min == -1
            else (1,max+1)
        else
            if min == -1 then (-1,-1)
            else (min+1, max+1)
         

main :: IO()
main = print(compress [1,1,1,3,3,4,5,5,6])