# Program BelahKetupat
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar belah ketupat sesuai dengan N
# Jika tidak, tampilkan pesan kesalahan:


# KAMUS
# Variabel
# N : int


def GambarBelahKetupat(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar belah ketupat dengan panjang diagonal mendatar sebesar N
# sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    # top
    for i in range (1,N+1,2): ### define first i as 1, take odd leap
        # start
        for j in range ((N-i)//2):
            print(" ", end="")
        # middle
        for j in range (i):
            print("*", end="")
        print()
    
    # bottom
    for i in range (N-2,0,-2):
        for j in range ((N-i)//2):
            print(" ", end="")
        for j in range (i):
            print("*", end="")
        print()

def IsValid(n):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# Lengkapilah kamus lokal dan algoritma fungsi di bawah ini
    if n>0 and n%2!=0: return True
    else: return False


# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)): # lengkapi dengan pemanggilan fungsi IsValid
    GambarBelahKetupat(N)# lengkapi dengan pemanggilan prosedur GambarBelahKetupat
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")