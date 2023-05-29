def GambarPita(N):
    # first
    print("*"*n)

    # bottom
    for i in range (N-2,2,-2):
        for j in range ((N-i)//2):
            print(" ", end="")
        for j in range (i):
            print("*", end="")
        print()
    
    for i in range (1,N+1,2): ### define first i as 1, take odd leap
        # start
        for j in range ((N-i)//2):
            print(" ", end="")
        # middle
        for j in range (i):
            print("*", end="")
        print()
    
n=int(input())
GambarPita(n)