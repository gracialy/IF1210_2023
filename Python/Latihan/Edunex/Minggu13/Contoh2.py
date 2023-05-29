# Program IsiTeks
# Membaca sejumlah masukan character dari user sampai dimasukkan nilai '.'
# dan menyimpannya ke dalam file teks dataku.txt

# KAMUS
# f : SEQFILE of char
# C1 : char
# mark = '.'

# ALGORITMA
f = open("dataku.txt",'w')
C1 = input()[0] # First-Elmt # input harus char
while (C1 != '.'):
    f.write(C1) # Proses current elmt
    C1 = input()[0] # Next-Elmt
# C1 = '.'

# tulis mark di akhir file
f.write('.')
f.close()