# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
t=int(input())
b=int(input())
k=int(input())

if t>100 and b<=150:
    if k==1 or k==0: print("FALSE")
    else: print("TRUE")
    exit()

if t<=100 and b<=150:
    if k==1: print("TRUE")
    else:
        if b>30 and k==2: print("TRUE")
        else: print("FALSE")
    exit()

if b>150:
    if (t<=100 and k==2) or (100<t<=200 and (k==2 or k==3)): print("TRUE")
    else: print("FALSE")
    exit() # end program
        
if k==0: print("TRUE")
else: print("FALSE")
exit()