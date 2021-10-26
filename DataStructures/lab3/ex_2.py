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
        if not self.isEmpty():
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
a,b=[],[]
lis = list(input("Enter Input : ").split(','))
for i in lis:
    x,y=map(int,i.split(" "))
    a.append(x)
    b.append(y)

index=[]
s = Stack()
for i in range(len(a)):
    if s.isEmpty():
        s.push(a[i])
    else:
        if a[i] <= s.peak():
            s.push(a[i])
        else:
            x=i-1
            while x!=-1:
                if a[i]>a[x] and x not in index:
                    index.append(x)
                    s.pop()
                x-=1
            s.push(a[i])
            
for i in index:
    print(b[i])


