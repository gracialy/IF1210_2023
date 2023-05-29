n=int(input())

arr=[0 for i in range (n)]

for i in range (n):
    arr[i]=int(input())

x=int(input())

found=-1
min=arr[0]
max=arr[0]
for i in range (n):
    if arr[i]==x:
        found=1
    if arr[i]<min:
        min=arr[i]
    if arr[i]>max:
        max=arr[i]

if found==(-1):
    print(x,"tidak ada")
else:
    if max==x: print("maksimum")
    if min==x: print("minimum")
    if (max!=x and min!=x): print("N#A")