print("*** Fun with Drawing ***")
x = int(input("Enter input : "))
n=4*x-3
ori=n//2
for i in range(n//2+1):
    for j in range(n):
        if abs(ori-j)<=ori-i:
            if i%2 ==0:
                print("#",end='')
            else:
                print(".",end='')          
        else:
            if j%2==0:
                print("#",end='')
            else:
                print(".",end='') 
    print("")

for i in range(n//2-1,-1,-1):
    for j in range(n):
        if abs(ori-j)<=ori-i:
            if i%2 ==0:
                print("#",end='')
            else:
                print(".",end='')          
        else:
            if j%2==0:
                print("#",end='')
            else:
                print(".",end='') 
    print("")

