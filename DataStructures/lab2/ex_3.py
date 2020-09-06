def odd_even(typ,arr, s):
    if typ =="S":
        ans=""
        if s=="Odd":
            for i in range(len(arr)):
                if i%2==0:
                    ans+=arr[i]
        elif s=="Even":
            for i in range(len(arr)):
                if i%2==1:
                    ans+=arr[i]
    elif typ=="L":
        lst=arr.split(' ')
        ans=[]
        if s=="Odd":
            for i in range(len(lst)):
                if i%2==0:
                    ans.append(lst[i])                   
        elif s=="Even":
            for i in range(len(lst)):
                if i%2==1:
                    ans.append(lst[i])                   
    return ans
print("*** Odd Even ***")
lis = list(input("Enter Input : ").split(','))
print(odd_even(lis[0],lis[1],lis[2]))


