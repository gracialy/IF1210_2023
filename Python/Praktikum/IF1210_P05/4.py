# Program Urut Rotasi

n=int(input())

# unique members
a = list(map(int, input().strip().split()))

# debugging station
# print(a)

def isBerurut (arr):
    # unique members
    initial=arr[0]
    for j in range (len(arr)):
        if initial<=arr[j]:
            initial=arr[j]
        else:
            return False
    return True

def rotate (a):
    # rotate right -> a[i]=a[i-1]
    
    # debugging station
    # print(a)
    
    n=len(a)
    
    # debugging station
    # print("temp", temp)
    
    # store last element
    temp=a[n-1]
    # rotate from last element til second element
    for i in range (n-1,0,-1):
        a[i]=a[i-1] # key
        # debugging station
        # print(a)
    # first element case
    a[0]=temp
    # debugging station
    # print("final", a)
    return a
    
for i in range (n):
    if isBerurut(a): 
        print (i)
        exit()
    else:
        # rotate right
        rotate (a)

print("Tidak")

# [1,2,3]
# [1,2,2]
# [1,1,2] -> must have saved last element
# [3,1,2]

