class Queue():
    def __init__(self, item=None):
        if item == None:
            self.item = []
        else:
            self.item = item
    
    def enQueue(self,i):
        self.item.append(i)

    def fQueue(self):
        if not self.isEmpty():
            return self.item[0]

    def deQueue(self):
        if not self.isEmpty():
            return self.item.pop(0)

    def isEmpty(self):
        return self.item == []
    
    def size(self):
        return len(self.item)

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

def bomb(x):
    s=Stack()
    b=Queue()
    count=0
    ans=[]
    for i in range(len(x)):
        if s.isEmpty():
            s.push(x[i])
        else:
            if(x[i]==s.peak()):
                a=s.pop()
                if(x[i]==s.peak()):
                    s.pop()
                    b.enQueue(a)
                    count+=1
                else:
                    s.push(a)
                    s.push(x[i])
            else:
                s.push(x[i])
                
    ans.append(s.item)
    ans.append(count)
    ans.append(b.item)
    return ans

x = input("Enter Input (Red, Blue) : ").split()
red = list(x[0])
blue = list(x[1][::-1])
blue = Queue(blue)
bombB = Queue()

print(bomb(red))



        



