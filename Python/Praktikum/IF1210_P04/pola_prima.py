n = int(input())

prima = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]

if n<1:
    print("Tidak valid")
else:
    for i in range(n):
        for j in range(n):
            if j == n-1:
                print(prima[abs(j-i)],end="")
            else:
                print(prima[abs(j-i)],end=" ")
        print()