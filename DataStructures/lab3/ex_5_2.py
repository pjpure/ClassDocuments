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
max=0
count=0
for i in lis:
    if i != 'B' and i != 'S' :
        s.push(i)
    elif i == 'S':
        for j in range(s.size()):
            a = s.pop()
            if a % 2 == 0:
                t.push(a-1)
            else:
                t.push(a+2)
        for j in range(t.size()):
            s.push(t.pop()) 
    elif i == 'B':
        if not s.isEmpty():
            count=1
            max = s.pop()
            t.push(max)
        for j in range(s.size()):
            if max < s.peak():
                max=s.pop()
                t.push(max)
                count+=1
            else:
                t.push(s.pop())
        print(count)
        for k in range(t.size()):
            s.push(t.pop())

