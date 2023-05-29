beban=int(input())
arr=[]

if beban<0: print("Tidak valid")
else:
    while beban>0:
        arr.append(beban)
        beban=int(input())

def bagi(arr):
    n=len(arr)
    store=arr
    
    while n!=1:
        left=0 ; right=0
        for i in range (n//2):
            left+=arr[i]
        for i in range (n//2, n):
            right+=arr[i]

        if left<=right: 
            arr=arr[:n//2]
        else: 
            arr=arr[n//2:]

        choosen=arr[0]
        for i in range (len(store)):
            if store[i]==choosen:
                print(i)
                break

        n=len(arr)

    print(arr[0]) # beban teringan

bagi(arr)

# wth 0