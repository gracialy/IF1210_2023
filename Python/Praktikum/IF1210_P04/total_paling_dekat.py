n = int(input())

if not (0 < n <= 50):
    print("Tidak valid")
else:
    x = [int(input()) for i in range(n)]
    a = int(input())

    sel = 9999
    ans = 0

    for i in range(n-2):
        for j in range(i+1,n-1):
            for k in range(j+1,n):
                y = x[i] + x[j] + x[k]
                if abs(y-a) < sel:
                    ans = 1
                    sel = abs(y-a)
                elif abs(y-a) == sel:
                    ans += 1

    print(ans)