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
    
    def inQueue(self, index, item):
        self.item.insert(index, item)

x = input("Enter Input : ").split('/')
a = x[0].split(',')
b = x[1].split(',')
q = Queue()
dic = dict()
index = dict()
lis=[]
for item in a:
    item = item.split()
    if item[0] not in index.keys():
        index[item[0]]=0
    dic[item[1]]=item[0]

for item in b:
    item = item.split()
    if q.isEmpty():
        if item[0] == 'D':
            print('Empty')
        else:
            q.enQueue(item[1])
            index[dic[item[1]]] = item[1]
            lis.append(dic[item[1]])
    else:
        if item[0] == 'D':
            d = q.deQueue()
            print(d)
            lis.remove(dic[d])
        else:
            if dic[item[1]] in lis:
                q.inQueue(q.item.index(index[dic[item[1]]])+1,item[1])
                index[dic[item[1]]] = item[1]
                lis.append(dic[item[1]])  
            else:
                q.enQueue(item[1])
                index[dic[item[1]]] = item[1]
                lis.append(dic[item[1]])
