for i in range(2,50):
    for j in range(2,i):
        if i%j == 0:
            print(i, '=' ,j,'*',i//j)
            break
    else:
        print(i, "is prime")
