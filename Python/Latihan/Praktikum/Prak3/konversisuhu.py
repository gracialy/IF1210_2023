# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS


# ALGORITMA
t=float(input()) # celcius
k=input() #satuan

if k=="R": print("{:.2f}".format((4/5)*t))
elif k=="F": print("{:.2f}".format((9/5)*t+32))
elif k=="K": print("{:.2f}".format(t+273.15))
# "{:.2f}".format: 2 angka di belakang koma