# Nama/NIM: Lydia Gracia
# Tanggal: 7 Maret 2023
# Deskripsi: program menampilkan deret 1+3+...+N; Input: N; Output: Deret

# KAMUS
# N, deret, i: Int

# ALGORITMA
N=int(input())

deret=0
i=1
while i<=N:
    deret+=i
    # debugging station
    print(i, ":", deret)
    i+=2

print(deret)