d = int(input())
l = int(input())
r = int(input())

if d<l:
    print("CEPAT")
elif d>r:
    print("TERLAMBAT")
else:
    if (l+r)%2==0:
        if d == (l+r)//2:
            print("TUTUP")
        else:
            print("TEPAT")
    else:
        if d == (l+r)//2 or d == (l+r)//2+1:
            print("TUTUP")
        else:
            print("TEPAT")