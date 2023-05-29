# Program BacaFile
# Membaca isi puisi.txt dan menuliskan
# setiap kalimat ke layar
# Kamus
# f : file of string
# baris : string
# Algoritma
f = open("puisi.txt",'r')
baris = f.readline()
while (baris):
    (baris.rstrip())
    baris = f.readline()
f.close()