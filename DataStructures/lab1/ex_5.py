x=int(input("Enter Input : "))
n=2*(x+2)
for i in range(n//2):
    for j in range(n):
        if j<n//2:
            if j<=abs(i-x) and i<n//2-1:
                print(".",end='')
            else:
                print("#",end='')
        else:
            if i==0 or i == n//2-1 or j== n//2 or j== n-1:
                print("+",end='')
            else:
                print("#",end='')
        
    print("")

for i in range(n//2):
    for j in range(n):
        if j < n//2:
            if i==0 or i== n//2-1  or j==0 or j== n//2-1:
                print("#",end='')
            else:
                print("+",end='')
        else:
            if j<n-i:
                print("+",end='')
            else:
                print(".",end='')
    print("")
