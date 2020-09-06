class Stack:
    full=None
    def __init__(self,item = None):
        if item == None:
            self.item = []
        else:
            self.item = item
    
    def push(self,i):
        self.item.append(i)

    def pop(self):
        return self.item.pop()
    
    def peak(self):
        return self.item[-1]

    def isEmpty(self):
        return self.item == []
    
    def size(self):
        return len(self.item)

    def isFull(self):
        if self.full != None:
            return self.size()>=self.full



def match(open, close):
    openP = "([{"
    closeP = ")]}"
    return openP.index(open) == closeP.index(close)


s1 = input("Enter Input : ")
s = Stack()
error = False
openP = "([{"
closeP = ")]}"
s2=[]
for i in range(len(s1)):
    if s1[i] in openP or s1[i] in closeP:
        s2.append(s1[i])
s1=s2
ans=len(s1)
for i in range(len(s1)):
    if s1[i] in openP:
        s.push(s1[i])
    elif s1[i] in closeP:
        if s.isEmpty():
            error = True
        else:
            open = s.pop()
            if not match(open, s1[i]):
                error = True
            else:
                ans-=2
if error :
    print(ans)
else :
    if s.isEmpty():
        print(ans)
        print("Perfect ! ! !")
    else:
        print(ans)

