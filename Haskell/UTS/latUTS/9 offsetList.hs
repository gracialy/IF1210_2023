{-

offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]

{- offsetList(f,g,a,b) menerima dua buah fungsi dan mengubah 2 buah float menjadi sebuah list of float -}

offsetList f g a b =

    if a > b then []

    else konso (f a) (offsetList f g (g a) b)



– CONTOH APLIKASI

– offsetList (\x → x) (\x → x + 2) 1.2 7.1

    – [1.2,3.2,5.2]

– offsetList (\x → if x<0 then -999 else x + 3.2) (\x → x + 0.5) (-1.0) 1.0

    – [-999.0, -999.0, 3.2, 3.7, 4.2]

    -}