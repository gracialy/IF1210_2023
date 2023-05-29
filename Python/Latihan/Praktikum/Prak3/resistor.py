r1=float(input())
r2=float(input())
r3=float(input())

jenis=input()

while not (r1>0 and r2>0 and r3>0 and 
           (jenis=='s' or jenis=='S' or jenis=='p' or jenis=='P')):
    r1=float(input())
    r2=float(input())
    r3=float(input())
    jenis=input()

if (jenis=='s' or jenis=='S'):
    print('{:.2f}'.format(r1+r2+r3))
    # new python format
    # '{:.2f}'.format()
else:
    print('{:.2f}'.format(1/((1/r1)+(1/r2)+(1/r3))))