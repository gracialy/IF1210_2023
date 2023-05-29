array=[]
temp=int(input())

while (temp!=-9999):
    array.append(temp)
    temp=int(input())

bilangan_terkecil=1
found=False

while (not found):
    if bilangan_terkecil in array:
        bilangan_terkecil += 1
    else:
        found_in_array=False
        for i in range (len(array)):
            sisa=bilangan_terkecil-array[i]
            for j in range (len(array)):
                if (sisa==array[j] and i!=j):
                    found_in_array = True
        
        if(found_in_array):
            bilangan_terkecil += 1
        else:
            print(bilangan_terkecil)
            found=True
            break