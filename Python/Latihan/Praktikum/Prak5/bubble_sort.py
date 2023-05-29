# Bubble sort
def bubbleSort(arr) :
    swapped = False
    for i in range (len(arr) - 1) :
        for j in range (0, len(arr) - i - 1) :
            if arr[j] > arr[j+1] :
                swapped = True
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

print(bubbleSort([1,2,3,4,5]))