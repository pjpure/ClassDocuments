x = int(input("input : "))
a = x*2-1
b = x*4-3
for i in range(a):
    for j in range(b):
        if abs(b//2-j)<=b//2-i:
            if i%2==0:
                print("#",end='')
            else:
                print(".",end='')
        else:
            if j%2==0:
                print("#",end='')
            else:
                print(".",end='') 
    print()
for i in range(a-2,-1,-1):
    for j in range(b):
        if abs(b//2-j)<=b//2-i:
            if i%2==0:
                print("#",end='')
            else:
                print(".",end='')
        else:
            if j%2==0:
                print("#",end='')
            else:
                print(".",end='') 
    print()