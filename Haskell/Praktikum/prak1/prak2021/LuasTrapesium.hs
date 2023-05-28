module LuasTrapesium where
    -- LUAS TRAPESIUM - luasTrapesium(t,s1,s2)
    
    -- DEFINISI DAN SPESIFIKASI
    luasTrapesium :: Float -> Float -> Float -> Float
    {- luasTrapesium(t,s1,s2) menghitung luas trapesium
    dengan t tinggi, s1 dan s2 panjang sisi sejajar. t, s1,
    dan s2 bilangan real dengan t>0, s1>0, s2>0 dan s1\=s2 -}

    -- REALISASI
    luasTrapesium t s1 s2 = 1/2*t*(s1+s2)

    -- CONTOH APLIKASI
    -- luasTrapesium 2 4 3