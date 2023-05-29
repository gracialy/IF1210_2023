# for char in string: -- char is a character from the string
# for row in readlines -- row is row from readlines function before
# char = input()[0] -- making the len input be 1 (char)

# f=open("data.txt", 'w')
# f.close()

# f.readline() -- read 1 line (next line)
# f.read(n) -- read n characters

# f.write(var) 
    # -- overwriting/making a file per run
    # -- input continuously in a line

# import csv
# f=open("data.csv", 'w', newline='') -- make sure no extra blank line

# reader = csv.reader(f,delimiter=',') -- read csv file
# row = next(reader) -- read next csv row as array
# tuple = (row[0],row[1]) -- make a tuple copy of row

# writer = csv.writer(f,delimiter=',')
# writer.writerow(var) -- write to a row
# writer.writerows(var, -- write to multiple row
#                var2)

# var.rstrip() -- remove right
# var.lstrip() -- remove left
# var.strip() -- remove any redundant space

def TulisTeks():
    # Membaca kalimat (kumpulan karakter) diakhiri mark dari keyboard
    # dan menyimpannya ke file data.txt
    # KAMUS LOKAL
    # f : SEQFILE of char
    # kalimat
    # ALGORITMA
    f = open("data.txt",'w')
    kalimat = input() # Baca sebuah kalimat dari keyboard
    # diakhiri mark '.'
    # Kalimat kosong hanya ada mark
    f.write(kalimat) # Menuliskan kalimat ke file
    f.close()

def BacaTeks():
    kalimat = ''
    f = open("data.txt")
    kalimat=f.readline()
    f.close()
    return kalimat


# kecil ke besar
def BubbleSort(arr) :
    # looping 1 
    for i in range (len(arr)) :
        # looping 2
        for j in range (len(arr) - i - 1) :
            # swapping
            if arr[j+1] < arr[j] :
                arr[j], arr[j+1] = arr[j+1], arr[j]
    # return                
    return arr

def InsertionSort(arr) :
    # looping
    for i in range(len(arr)):
        # mengambil key yang akan di insert
        key = arr[i]
        j = i - 1 # iteration 
        # selama belum yang terakhir dan masih kecil dari elemen ke j
        while j >= 0 and key < arr[j]:
            # menggeser
            arr[j + 1] = arr[j]
            j = j - 1
        # memasukkan elemen
        arr[j + 1] = key
    # return
    return arr

def SelectionSort(arr) :
    # looping
    for i in range(len(arr)):
        # inisiasi index terkecil
        min_idx = i
        # looping 2, mencari elemen lebih kecil dari arr[min_idx]
        for j in range(i + 1, len(arr)):
            # jika ada yang lebih kecil
            if arr[j] < arr[min_idx]:
                min_idx = j
        # tukar posisi
        (arr[i], arr[min_idx]) = (arr[min_idx], arr[i])
    # return
    return arr

def CountingSort(arr) :
    # inisialisasi tabel frekuensi
    count = [0] * 100 # asumsi nilai terbesar 100
    # looping menghitung frekuensi
    for i in range(len(arr)):
        count[arr[i]] += 1
    # Pengisian kembali
    for i in range(len(count)) :
        k = 0 # iterasi
        if count[i] != 0 : # bila tidak 0
            k += + 1
            print(count[i])
            print(k)
    return arr


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