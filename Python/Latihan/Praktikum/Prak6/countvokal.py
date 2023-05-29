# Program HitungVokal
# Membaca masukan sejumlah karakter dan menyimpannya ke file data.txt
# Membaca isi file data.txt, menghitung dan menampilkan ada berapa
# banyak karakter huruf hidup dalam file
# KAMUS
mark = '.' # constant mark : character = '.'

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

# ALGORITMA PROGRAM UTAMA
TulisTeks()

vokal="AaIiUuEeOo"
count=0

for i in (BacaTeks()): # for i in string: i is a character from the string
    for j in (vokal):
        print("check", i, j)
        if i==j:
            count+=1

print(count)