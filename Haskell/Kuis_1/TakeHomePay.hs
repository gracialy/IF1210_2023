module TakeHomePay where
-- Menentukan Take Home Pay untuk karyawan tetap dan kontrak dengan berbagai ketentuan

-- DEFINISI DAN SPESIFIKASI
thp :: Bool -> Int -> Int 

{- Fungsi menerima input berupa sebuah Bool lalu diikuti berupa sebuah Integer,
dan menghasilakn Take Home Pay dari karyawan tetap/kontrak dengan berbagai syarat.
Boolean bernilai True untuk karyawan tetap, dan Boolean False untuk karyawan kontrak
-}

thp p d = if(p==True) then
              if(d<15) then d*200000
              else if(d<20) then 5000000
              else (d-20)*100000+4000000+1000000
          else 
              if(d<20) then d*150000
              else (d-20)*175000 + 20*150000

{- Dalam kasus ini terdapat dua kasus umum, yaitu menghitung THP karyawan tetap dan kontrak,
dan untuk menghitung THP karyawan tetap terdapat tiga kasus :
1. THP karyawan tetap yang bekerja kurang dari 15 hari
Untuk kasus pertama, kita dapat menghitung dengan mengalikan hari dengan 200.000
maka THP karyawan tetap sebesar d*200.000

2. THP karyawan tetap yang bekerja kurang dari 20 hari
untuk kasus yang kedua kita dapat menghitung THP dengan menambahkan gaji pokok beserta tunjangan
maka THP karyawan tetap sebesar 4.000.000 + 1.000.000

3. THP karyawan tetap yang bekerja lebih dari 20 hari
untuk kasus ini kita dapat menghitung THP dengan menambahkan gaji pokok beserta gaji ekstra,
gaji pokok sebesar 4.000.000 ditambah dengan tunjangan sebesar 1.000.000
untuk gaji ekstra sebesar 200.000 tiap hari, untuk menghitung hari ekstra bisa diperoleh dengan
mengurangkan d dengan 20, dan untuk gaji ekstranya sebesar (d-20)*200.000
maka diperoleh total gaji sebesar 4.000.000 + 1.000.000 + (d-20)*200.000

Untuk menghitung THP dari karyawan kontrak terdapat dua kasus :
1. THP karyawan kontrak yang bekerja kurang dari sama dengan 20 hari 
Untuk kasus ini kita dapat menghitung THP karyawan kontrak dengan mengalikan hari total kerja dengan 
150.000 maka diperoleh THP sebesar d*150.000

2. THP karyawan kontrak yang bekerja lebih dari 20 hari
Untuk kasus ini kita dapat menghitung THP karyawan kontrak dengan menghitung gaji hari normal 
beserta hari ekstra, untuk gaji hari normal sebesar 150.000 tiap hari,dan untuk gaji hari ekstra
sebesar 175.000 tiap hari. untuk menghitung total hari ekstra dapat diperoleh dengan mengurangi
hari kerja dengan 20
maka diperoleh THP sebesar d*150.000 + (d-20)*175.000
 
-}

-- APLIKASI
-- thp True 28 = 5.800.000

-- Ditulis oleh Vieri Fajar Firdaus
