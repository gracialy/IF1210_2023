# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
def deretKarakter(c,n):
    for i in range (n):
        if i==(n-1):
            print(c)
            return # keluar dari fungsi
        print(c, end="")

if __name__ == "__main__":
    c=input()
    n=int(input())
    deretKarakter(c,n)