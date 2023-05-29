# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
t=int(input())
b=int(input())

if t<=150:
    print(1)
    exit()

if t>170 and 60<b<=80:
    print(3)
    exit()

if 150<t<=170:
    if b<=80: print(2)
    else: print(3)
    exit()

print(4)
exit()