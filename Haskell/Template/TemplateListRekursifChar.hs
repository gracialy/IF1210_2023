-- NIM/Nama		: 
-- Nama file	: 
-- Topik 		: List Rekursif
-- Tanggal 		: 
-- Deskripsi	: 

{- module _________ where -}

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of char: [ ] atau [e o List] atau [List o e]  
   Definisi type List of char
   Basis: List of Int kosong adalah list of char 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype char di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype char di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: char -> [char] -> [char]
{- konso e li menghasilkan sebuah list of char dari e (sebuah char) dan li 
   (list of char), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [char] -> char -> [char]
{- konsDot li e menghasilkan sebuah list of char dari li (list of char) dan 
   e (sebuah char), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]


-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [char] -> char
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [char] -> [char]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [char] -> char
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [char] -> [char]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [char] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [char] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 