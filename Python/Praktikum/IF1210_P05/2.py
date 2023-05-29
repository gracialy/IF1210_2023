# Program Paling Sering Muncul

n=int(input())
arr = list(map(int, input().strip().split()))

nilai=[arr[0]]
occ=[1]

if n==1: 
    print(nilai[0])
    exit()
else:
    for i in range (1,n):
        same=False
        # have we ever encountered the same value?
        for j in range (len(nilai)):
            # debugging station
            # print(arr[i], nilai[j])
            if arr[i]==nilai[j]:
                occ[j]+=1
                same=True
                break
        if not(same):
            nilai.append(arr[i])
            occ.append(1)
        # debugging station
        # print(nilai, occ)

modus=max(occ)
index=[]

# anticipating more than one values for a max occurence
for i in range (len(occ)):
    if occ[i]==modus:
        index.append(nilai[i])

print(min(index))