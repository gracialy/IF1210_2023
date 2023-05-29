n = int(input())
x = int(input())

a = list(map(int,input("").split()))

mins = 0
maks = 0

samefound = False
mins = abs(a[0]-x)
maks = abs(a[0]-x)
minsp = a[0]
maksp = a[0]

for i in range(n):
    if a[i] == x:
        samefound = True
    if abs(a[i]-x) < mins and a[i] != x:
        mins = abs(a[i]-x)
        minsp = a[i]
    if abs(a[i]-x) > maks and a[i] != x:
        maks = abs(a[i]-x)
        maksp = a[i]

if samefound:
    print(x)
else:
    print("TIDAK ADA")
print(minsp)
print(maksp)