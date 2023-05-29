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

# Baca file dan proses
ArsipMHS = open ("MHS2.csv",'w')
writer = csv.writer(ArsipMHS,delimiter=',')

# baca masukan dari user dan bentuk menjadi tuple
nim = input()
nilai = int(input())
rekMHS = (nim,nilai)
while (not(EOP(rekMHS))):
    writer.writerow(rekMHS) # tulis rekMHS ke file
    nim = input()
    nilai = int(input())
    rekMHS = (nim,nilai)

# tulis mark
writer.writerow(mark)
ArsipMHS.close()
