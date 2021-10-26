class Stack:
    full = None

    def __init__(self, item=None):
        if item == None:
            self.item = []
        else:
            self.item = item

    def push(self, i):
        self.item.append(i)

    def pop(self):
        return self.item.pop()

    def peak(self):
        if not self.isEmpty():
            return self.item[-1]
    def isEmpty(self):
        return self.item == []
    
    def size(self):
        return len(self.item)

    def isFull(self):
        if self.full != None:
            return self.size()>=self.full

s=Stack()
count=0
x = list(input("Enter Input : ").split(' '))
for i in range(len(x)):
    if s.isEmpty():
        s.push(x[i])
    else:
        if(x[i]==s.peak()):
            a=s.pop()
            if(x[i]==s.peak()):
                s.pop()
                count+=1
            else:
                s.push(a)
                s.push(x[i])
        else:
            s.push(x[i])
print(s.size())
if s.isEmpty():
    print("Empty") 
else:
    print(''.join(s.item[::-1]))
if count>1:print("Combo :",count,"! ! !")
 



