# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
n=int(input())

while not(0<n<=100):
    print("Masukan salah. Ulangi!")
    n=int(input())

bil=[0 for i in range (n)]
for i in range (n):
    bil [i] = int(input())

x=int(input())

if not(x==1 or x==-1 or x==1):
    print("Tidak diproses")
    exit()

# debugging station
print(bil)

found=-1
for i in range (n):
    if bil[i]*x > 0:
        found=i
    elif bil[i]==0 and x==0:
        found=i
    
    if found!=-1: 
        break # exit loop

if found == -1:
    if x==-1: print("Tidak ada negatif")
    elif x==0: print("Tidak ada 0")
    else: print("Tidak ada positif")
else: 
    if x==0: print(found+1)
    else: print(found+1, bil[found])

    