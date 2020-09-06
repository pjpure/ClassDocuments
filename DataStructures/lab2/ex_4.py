lis = list(input("Enter Your List : ").split())
ans=[]
if len(lis)>2:
    for i in range(len(lis)):
        for j in range(i+1,len(lis)):
            for k in range(j+1,len(lis)):
                if int(lis[i])+int(lis[j])+int(lis[k])==0:
                    if [int(lis[i]),int(lis[j]),int(lis[k])] not in ans:                   
                        ans.append([int(lis[i]),int(lis[j]),int(lis[k])])
    print(ans)
else:
    print("Array Input Length Must More Than 2")



