# Program NilaiRataRata
# Membaca data dalam MHS.csv dan menghasilkan nilai rata-rata
# dari semua mahasiswa. MHS.csv diasumsikan sudah isi,
# minimum berisi record ("99999999",99) (mark).
import csv

# KAMUS
# mark
mark = ("99999999",99)
# type rekamanMHS : (NIM : string, nilai : int)
# ArsipMhs : SEQFILE of rekamanMHS
# reader = hasil pembacaan data csv
# rekMhs : rekamanMHS
# SumNil : int # jumlah nilai
# JumMHS : int # jumlah mahasiswa

def EOP(rekMHS):
    # menghasilkan true jika RekMHS = mark
    return (rekMHS[0] == mark[0] and rekMHS[1] == mark[1])

# ALGORITMA
# Buka file csv dan menyiapkan reader
ArsipMHS = open ("MHS.csv",'r')
reader = csv.reader(ArsipMHS,delimiter=',') 
print(reader)
# baca semua data dari file csv

# baca setiap rekaman sambil menentukan apakah file kosong
# file kosong adalah jika rekaman hanya tersebut 1 rekaman
# dan rekaman tersebut pasti mark
SumNil = 0
JumMhs = 0
for row in reader: 
    # row adalah 1 baris data di reader
    print(row)
    rekMHS = (row[0],int(row[1]))
    if (not(EOP(rekMHS))):
        SumNil = SumNil + rekMHS[1]
        JumMhs = JumMhs + 1

# cek file kosong dengan JumMhs
if (JumMhs == 0):
    print("File kosong")    
else: # JumMhs != 0
    rata = round(SumNil/JumMhs,2)
    print("Rata-rata = %.2f" % rata)
ArsipMHS.close()