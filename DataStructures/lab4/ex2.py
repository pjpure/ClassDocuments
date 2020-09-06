class Queue():
    def __init__(self, item=None):
        if item == None:
            self.item = []
        else:
            self.item = item

    def enQueue(self, i):
        self.item.append(i)

    def deQueue(self):
        if not self.isEmpty():
            return self.item.pop(0)

    def inQueue(self, index, item):
        self.item.insert(index, item)

    def isEmpty(self):
        return self.item == []

    def size(self):
        return len(self.item)


x = input("Enter Input : ").split(',')
q = Queue()
index = 0
for item in x:
    if q.isEmpty():
        if item[:2] == 'EN' or item[:2] == 'ES':
            q.enQueue(item)
            if item[:2] == 'ES':
                index+=1
        if item[0] == 'D':
            print('Empty')
    else:
        if item[:2] == 'EN':
            q.enQueue(item)
        if item[:2] == 'ES':
            q.inQueue(index, item)
            index += 1
        if item[0] == 'D':
            a = q.deQueue()
            if a[:2]=='ES':
                index-=1
            print(a[3:])
