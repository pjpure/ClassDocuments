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
qr = Queue()
qb = Queue(bomb(blue)[0])
bombB = Queue(bomb(blue)[2])
mistake = 0


for i in range(len(red)):
    qr.enQueue(red[i])
    if i>0 and i<len(red)-1 and red[i-1]==red[i]==red[i+1] and not bombB.isEmpty():
        t = bombB.deQueue()
        qr.enQueue(t)
        if t == red[i]:
            mistake+=1
print(qr.item)

qr = bomb(qr.item)
qb = bomb(blue)
print("Red Team :")
print(len(qr[0]))
if len(qr[0])>0 :
    print(''.join(qr[0][::-1]))
else: 
    print("Empty")
print(qr[1]-mistake,"Explosive(s) ! ! ! (HEAT)")
if mistake > 0:print("Blue Team Made (a) Mistake(s)",mistake,"Bomb(s)")

print("----------TENETTENET----------")

print(": maeT eulB")
print(len(qb[0]))
if len(qb[0])>0 :
    print(''.join(qb[0][::-1]))
else: 
    print("ytpmE")
print("(EZEERF) ! ! ! (s)evisolpxE",qb[1])


        



