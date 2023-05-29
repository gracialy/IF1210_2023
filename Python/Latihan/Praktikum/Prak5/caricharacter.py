n=int(input())

while not(0<n<=100):
    print("Masukan salah. Ulangi!")
    n=int(input())

char=['' for i in range (n)]

for i in range (n):
    char[i]=input()

cc=input()

if not(cc=='S' or cc=='s' or cc=='L' or cc=='l'
       or cc=='X' or cc=='x'):
    print('Tidak diproses')
    exit()

found=-1
for i in range (n):
    if (cc=='S' or cc=='s') and (97<=ord(char[i])<=122):
        found=i
    elif (cc=='L' or cc=='l') and (65<=ord(char[i])<=90):
        found=i
    elif (cc=='X' or cc=='x') and not(97<=ord(char[i])<=122 or 65<=ord(char[i])<=90):
        found=i

    if found!=-1: break

if found==(-1):
    if (cc=='S' or cc=='s'): print("Tidak ada huruf kecil")
    elif (cc=='L' or cc=='l'): print("Tidak ada huruf besar")
    else: print("Semua huruf")
else:
    print(i+1, char[i])
        