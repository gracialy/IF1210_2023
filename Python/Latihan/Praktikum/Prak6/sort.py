def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    max=arr[index_start]
    for i in range (index_start+1,len(arr)):
        if arr[i]>max:
           max=arr[i]
    return max

def get_idx(arr, number):
    # mendapatkan index dari suatu angka dalam array
    for i in range (len(arr)):
        # asumsi unik?
        if arr[i]==number:
            # asumsi selalu ada
            return i

def swap(array, indeks_1, indeks_2):
    # swap elemen array indeks 1 dengan indeks 2
    array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]

def selection_sort(arr):
    # besar ke kecil
    for i in range (len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

# ALGORITMA
# asumsi N>0
n=int(input())
arr=[]

for i in range (n):
    arr.append(int(input()))

selection_sort(arr)