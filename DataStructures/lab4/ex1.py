class Queue():
    def __init__(self, item=None):
        if item == None:
            self.item = []
        else:
            self.item = item
    
    def enQueue(self,i):
        self.item.append(i)

    def deQueue(self):
        if not self.isEmpty():
            return self.item.pop(0)

    def isEmpty(self):
        return self.item == []
    
    def size(self):
        return len(self.item)
x = input("Enter Input : ").split(',')
lis=[]
for i in x:
    lis.append(''.join(i.split('E ')))

q = Queue()
dq = Queue()
for item in lis:
    if item !='D':
        q.enQueue(item)
        print(', '.join(q.item))
    elif not q.isEmpty():
        if q.size()==1:
            a=q.deQueue()
            dq.enQueue(a)
            print(a,'<-','Empty')
        else:
            a=q.deQueue()
            dq.enQueue(a)
            print(a,'<-',', '.join(q.item))
    elif  q.isEmpty():
        print('Empty')
if q.isEmpty() and dq.isEmpty():
    print('Empty',':','Empty')
elif q.isEmpty() :
    print(', '.join(dq.item),':','Empty')
elif dq.isEmpty():
    print('Empty',':',', '.join(q.item))
else:
    print(', '.join(dq.item),':',', '.join(q.item))