def mapping(s):
    dic = dict()
    index=0
    ans=[]
    for i in range(len(s)):
        if s[i] not in dic.keys():      
            dic[s[i]]=index
            index+=1
        ans.append(dic[s[i]])
    return ans
s = input("Enter String : ")
print(mapping(s))

        

