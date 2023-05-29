# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
n=int(input())
c1=input()
c2=input()

# print()

if n<=0 or c1==c2: print("Masukan tidak valid")
else:
    i=1
    while i<=n:
        if i==1 or i==n:
            for j in range (n): print(c1, end="")
            # end="" : end tanpa spasi atau Enter
        else:
            for j in range (n):
                if j==0 or j==(n-1): 
                    print(c1, end="")
                else: 
                    print(c2,end="")
        print()
        # debugging station
        # print(i)
        i+=1