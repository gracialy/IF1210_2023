module SukuKeN where
  -- Menentukan Suku Ke-N                                                   sukuKeN(n)
  -- DEFINISI DAN SPESIFIKASI
  sukuKeN :: Int -> Int
  {- Fungsi sukuKeN(n) menerima input sebuah integer n, lalu menghasilkan suku ke-n dari 
    barisan 1, -4, 7, -10, 13,... -}
  
  -- REALISASI
  sukuKeN n
    | (mod n 2) == 0  = -1 * (1 + 3*(n - 1))    -- Kasus ketika n genap
    | otherwise       = 1 + 3*(n - 1)           -- Kasus ketika n ganjil

  {- Metode ini menggunakan persamaan yang diberikan di soal untuk mencari suku ke-n dari 
    sebuah deret, dengan persamaannya Un = a + b*(n-1), a merupakan suku pertama dan b 
    merupakan selisih antarsuku. 
    
    Deret yang diberikan pada soal tidak memiliki selisih antarsuku yang sama (selisih antara 
    suku pertama dan kedua = -5, sementara selisih antara suku kedua dan ketiga = 11). 
    Akan tetapi, jika diamati lebih lanjut nilai mutlak dari setiap suku pada deret tersebut 
    memiliki selisih yang sama yaitu 3 (mutlak suku kedua - mutlak suku pertama = 3, mutlak 
    suku ketiga - mutlak suku kedua = 3, dst). Maka dari itu, rumus Un untuk nilai mutlak dari 
    deret tersebut adalah Un = 1 + 3*(n-1). 
    
    Untuk membuat realisasi dari persamaan ini, kita hanya perlu menambahkan tanda negatif 
    pada suku-suku yang genap dengan mengalikannya dengan -1. Jadi, persamaan suku ke-n deret 
    tersebut menjadi Un = 1 + 3*(n-1) untuk n ganjil dan -1 * (1 + 3*(n - 1)) untuk n genap. -}

  -- APLIKASI
  -- sukuKeN 8 = -22
  
  -- Ditulis oleh Rava Maulana