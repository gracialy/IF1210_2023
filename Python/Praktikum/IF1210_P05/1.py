# Program Jarak Terdekat Alfabet

N=input()
M=input()

if not(65<=ord(N)<=90 and 65<=ord(N)<=90):
    print("Tidak valid")
else:
    if (ord(N)>ord(M)):
        if (ord(N)-ord(M))>13:
            print(26-(ord(N)-ord(M)))
        else: print(ord(N)-ord(M))
    else:
        if (ord(M)-ord(N))>13:
            print(26-(ord(M)-ord(N)))
        else: print(ord(M)-ord(N))