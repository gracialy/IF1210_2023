# Program Bilangan Minimal

# Bubble sort
def bubbleSort(arr) :
    swapped = False
    for i in range (len(arr) - 1) :
        for j in range (0, len(arr) - i - 1) :
            if arr[j] > arr[j+1] :
                swapped = True
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def isInTwo(a,arr):
    occ=0
    for i in range (len(arr)):
        if arr[i]==a:
            occ+=1

    if occ==2: return True
    else: return False

def isIn(a,array):
    for i in range (len(array)):
        if array[i]==a:
            return True
    return False

def merge(first,second):
    # unique ascending elements
    merged=first
    for i in range (len(second)):
        if not(isIn(second[i], merged)):
            merged.append(second[i])
    return bubbleSort(merged)

n=int(input())
arr=[]

'''is this the case?'''
if(n==(-9999)):
    print(1)
else:
    while n!=(-9999):
        if not(isInTwo(n, arr)):
            arr.append(n)
        n=int(input())

arr=bubbleSort(arr)
# debug
# print(arr)

# is not the sum of two elements
sum=[]
for i in range (len(arr)-1):
    for j in range (i+1,len(arr)):
            total=arr[i]+arr[j]
            if not(isIn(total, sum)):
                sum.append(total)

sum=bubbleSort(sum)
# debug
# print(sum)

# merge array
merged=merge(arr, sum)
# print(merged)

bil=1
# is not any of the elements
for i in range (len(merged)):
    if bil==arr[i]:
            bil+=1

print(bil)

# partial corner case 9

