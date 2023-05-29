n=int(input())

if n==1:
    print("*")
    exit()

i=0
while n!=1:
    print(i*" "+n*"*")
    n-=2
    i+=2

print(i*" "+"*")

# debugging station
# print(i,n)

while i!=0:
    i-=2
    n+=2
    print(i*" "+n*"*")