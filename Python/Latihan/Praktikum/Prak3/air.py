# NIM/Nama  : 19622217/Lydia Gracia
# Tanggal   :
# Deskripsi : Program memeriksa ...; input: ...; output: ...

# KAMUS

# ALGORITMA
T=int(input())

if T==0: print("ANTARA PADAT-CAIR")
elif T==100: print("ANTARA CAIR=GAS")
elif T<0: print("PADAT")
elif 0<T<100: print("CAIR")
else: print("GAS")