# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
ip = float(input())
pot = float(input())

if ip>=3.5: 
    print(4)
    exit()

if pot<1 and ip<3.5: 
    print(1)
    exit()

if 1<=pot<5 and ip<3.5:
    if ip>=2: print(3)
    else: print(2)
    exit()

print(0)
exit()