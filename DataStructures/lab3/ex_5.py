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
        if not self.isEmpty():
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
            return self.size() >= self.full


lis = []
x = list(input("Enter Input : ").split(','))
for i in x:
    lis.append(''.join(i.split('A ')))
for i in range(len(lis)):
    if lis[i]!='B' and lis[i]!='S':
        lis[i]=int(lis[i])
s = Stack()
t = Stack()
v = Stack()
state=0
for i in lis:
    if i != 'B' and i!='S':
        s.push(i)
    else:
        if i=='S':
            state=1      
            for j in range(s.size()):
                a = s.pop()
                t.push(a)
                if a % 2 == 0:
                    a-=1
                else:
                    a+=2
                v.push(a)
            for j in range(v.size()):
                s.push(v.pop())
        else:
            if state==0:
                b = s.pop()
                t.push(b)
                for j in range(s.size()):
                    if b < s.peak():
                        b = s.pop()
                        t.push(b)
                    else:
                        break
                print(t.size())
                for k in range(t.size()):
                    s.push(t.pop())
            else:
                b = s.pop()
                v.push(b)
                for j in range(s.size()):
                    if b < s.peak():
                        b = s.pop()
                        v.push(b)
                    else:
                        break
                print(v.size())
                s.item=[]
                state=0
                for k in range(t.size()):
                    s.push(t.pop())

