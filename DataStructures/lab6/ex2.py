def length(txt):
    if  txt[0:] is txt[-1:]:
        print(txt[0], end = "*")
        return 1
    s = length(txt[:-1])
    if s%2 == 0:
        print(txt[s],end = "*")
    else:
        print(txt[s],end = "~")
    return s+1
        
        
        
print("\n",length(input("Enter Input : ")),sep="")