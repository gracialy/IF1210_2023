# Program SortSaham
# Spesifikasi : ....
# import tulisdata
# sudah disediakan module bernama tulisdata.py yang digunakan untuk mengisi
# file yang di dalamnya tersedia prosedur TulisDataSaham untuk 
# mengisikan data ke file teks tertentu

# KAMUS
# namafile: string

def insertion_sort(data):
    for i in range (1, len(data)):
        temp=data[i]
        j=i-1
        while j>=0 and int(temp[0])<int(data[i][0]):
            data[i+1]=data[i]
            i-=1
            data

# ALGORITMA PROGRAM UTAMA
'''
namafile = input()
tulisdata.TulisDataSaham(namafile)
'''

namafile="saham.txt"
f=open(namafile,"r")
line1=f.readline() # membaca 1 line
if line1=="99999999": print("File kosong")
else:
    sum_nilai=[]
    while line1!="99999999":
        line2=f.readline()
        line3=f.readline()
        sum_nilai.append((line1,line2,line3))
        line1=f.readline()

insertion_sort(sum_nilai)
print(sum_nilai)