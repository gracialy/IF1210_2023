# Program BacaText
# Membaca sebuah text file diakhiri dengan MARK berupa '.'
# dan menuliskan isinya ke layar
# Asumsi: file dataku.txt ada dan sudah terisi, minimum hanya berisi '.'

# KAMUS
# f: SEQFILE of char
# cc: char
# mark='.'

# ALGORITMA
f = open("data.txt", 'r')
cc= f.read(1) # First-ELmt, baca 1 karakter

if (cc=='.'):
    print("File kosong")
else: # cc not EOP, file tidak kosong
    while True: 
        print(cc, end='')
        cc=f.read(1) #Next 1 character
        if (cc=='.'):
            break

f.close()