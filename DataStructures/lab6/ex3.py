def gcd(x,y): 
    if y == 0:
        return x
    return gcd(y,x%y)

         

lis = input("Enter Input : ").split()
x,y = int(lis[0]),int(lis[1])
ans = gcd(x,y)
if x==0 and y==0:   
    print("Error! must be not all zero.")
elif ans<0 and x<0 and y<0:
    print("The gcd of",min(x,y),"and",max(x,y),"is :",-ans)
else:
    print("The gcd of",max(x,y),"and",min(x,y),"is :",abs(ans))

    

