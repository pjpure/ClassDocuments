class DoublyLinkedList:
    class Node:
        def __init__(self, data, prev=None, next=None):
            self.data = data
            if prev is None:
                self.prev = None
            else:
                self.prev = prev
            if next is None:
                self.next = None
            else:
                self.next = next

    def __init__(self):
        self.header = self.Node(None, None, None)
        self.header.next = self.header.prev = self.header
        self.size = 0

    def __str__(self):
        s = ''
        p = self.header.next
        for i in range(len(self)):
            s += str(p.data) + ' '
            p = p.next
        return s

    def __len__(self):
        return self.size

    def isEmpty(self):
        return self.size == 0

    def indexOf(self, data):
        q = self.header.next
        for i in range(len(self)):
            if q.data == data:
                return i
            q = q.next
        return -1

    def isIn(self, data):
        return self.indexOf(data) >= 0

    def nodeAt(self, i):
        p = self.header
        for j in range(-1, i):
            p = p.next
        return p

    def insertBefore(self, q, data):
        p = q.prev
        x = self.Node(data, p, q)
        p.next = q.prev = x
        self.size += 1

    def append(self, data):
        self.insertBefore(self.nodeAt(len(self)), data)

    def add(self, i, data):
        self.insertBefore(self.nodeAt(i), data)

    def removeNode(self, q):
        a = q.data
        p = q.prev
        x = q.next
        p.next = x
        x.prev = p
        self.size -= 1
        return a

    def delete(self, i):
        return self.removeNode(self.nodeAt(i))

    def remove(self, data):
        q = self.header.next
        while q != self.header:
            if q.data == data:
                self.removeNode(q)
                break
            q = q.next

class Queue:
    def __init__(self, item=None):
        self.item = DoublyLinkedList()
        if item!=None:
            for i in item:
                self.item.append(i)

    def enQueue(self, item):
        self.item.append(item)

    def deQueue(self):
        if self.size()>0:
            return self.item.delete(0)

    def isEmpty(self):
        return self.size() == 0

    def size(self):
        return self.item.size
    
def get_digit(n,d):
	for i in range(d-1):
		n//=10
	return n%10

def get_max_bits(n):
	i = 0
	while n > 0:
		n//=10
		i+=1
	return i

def radix_sort(l):
	q = Queue(l)
	max_bits = get_max_bits(max(l))
	qq=[]
	for _ in range(10):
		qq.append(Queue())

	for i in range(1,max_bits+1):
		print('Round',i)
		while not q.isEmpty():
			num = q.deQueue()
			num_digit = get_digit(num,i)
			qq[num_digit].enQueue(num)
		
		for i in range(10):
			#print(i,':',sorted(qq[i].item))
			while not qq[i].isEmpty():
				q.enQueue(qq[i].deQueue())
			
	return q.item

inp = input("Enter Input : ").split()
for i in range(len(inp)):
	inp[i] = int(inp[i])
print(radix_sort(inp))

