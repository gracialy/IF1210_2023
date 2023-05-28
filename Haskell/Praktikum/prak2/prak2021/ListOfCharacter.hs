module ListOfCharacter where
    inverse :: [Char] -> [Char]
    inverse lc =
        if null lc then []
        else [last lc] ++ inverse (init lc)

    {- inverse lc =
        if null lc then []
        else inverse (tail lc) ++ [head lc]-}


    isElmt :: Char -> [Char] -> Bool
    isElmt a lc =
        if null lc then False
        else if a==(head lc) then True
        else isElmt a (tail lc)

    makeUnique :: [Char] -> [Char]
    makeUnique lc =
        if null lc then []
        else if isElmt (last lc) (init lc) then makeUnique (init lc) 
        -- jika masih ada karakter sama di depan, abaikan last
        else (makeUnique (init lc)) ++ [last lc] 
        -- not(isElmt (last lc) (init lc)) 
    

    konkat :: [Char] -> [Char] -> [Char]
    konkat l1 l2 =
        if null l1 then l2
        else [head l1] ++ konkat (tail l1) l2

    -- konkat l1 l2 = lc1 ++ lc2