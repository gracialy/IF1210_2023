n=int(input())
arr=[int(input()) for i in range (n)]

probUntung=0
untung=-1
hariBeli=-1
hariJual=-1

# debugging station
#print(arr)

for i in range (0,n):
    for j in range (i+1,n):
        if ((arr[j]-arr[i])>untung and (arr[j]-arr[i])!=0):
            hariBeli=i+1
            hariJual=j+1
            untung=arr[j]-arr[i]
            probUntung=1
        # debugging station
        #print("check", arr[i], arr[j])
        #print(untung, hariBeli, hariJual)




if probUntung==0:
    print("Tidak beli")
    exit()

print(untung)
print(hariBeli)
print(hariJual)