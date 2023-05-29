arr=[]
berat=int(input())

count1=0
count2=0
sum=0

while (berat!=(-999)):
    if 30<=berat<=200:   
        arr.append(berat)
        
        if berat<=50: count1+=1
        elif berat>=100: count2+=1
        sum+=berat

        # debugging station
        # print("\nstation")
        # print(arr,count1,count2,sum,"\n")
    
    berat=int(input())

    
if len(arr)==0:
    print("Data kosong")
    exit()

print(len(arr))
print(count1)
print(count2)
print(round(sum/len(arr)))

