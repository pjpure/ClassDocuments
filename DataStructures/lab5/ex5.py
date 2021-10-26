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

    def sortInsertBefore(self,data):
        p = self.header.next
        while p.data != None:
            if data < p.data:
                self.insertBefore(p,data)
                break
            else:
                p = p.next
        else:
            self.append(data)


def get_digit(n, d):
    n = abs(n)
    for i in range(d-1):
        n //= 10
    return n % 10


def get_max_bits(n):
	i = 0
	while n > 0:
		n //= 10
		i += 1
	return i



def radix_sort(l):
    q = DoublyLinkedList()

    qq=[]
    for _ in range(10):
        qq.append(DoublyLinkedList())
	
    max_bits = get_max_bits(max(l))

    for item in l:
        q.append(item)

    rounds = 0
    for i in range(1,max_bits+2):
        rounds+=1
        print("------------------------------------------------------------")
        print('Round :',i)
        
        while not q.isEmpty():
        	num = q.delete(0)
        	num_digit = get_digit(num,i)
        	qq[num_digit].sortInsertBefore(num)
        count = 0
        for i in range(1,10):
            if qq[i].isEmpty():
                count+=1
		
        for i in range(10):
        	print(i,':',qq[i])
        	while not qq[i].isEmpty():
        		q.append(qq[i].delete(0))
        if count==9:
            print("------------------------------------------------------------")
            print(rounds-1,"Time(s)") 
            break   
    return q

if __name__ == "__main__": 
    inp = input("Enter Input : ").split()
    x = inp.copy()
    for i in range(len(inp)):
        inp[i] = int(inp[i])
    af = radix_sort(inp)
    print("Before Radix Sort :",' -> '.join(x))
    print("After  Radix Sort :",' -> '.join(af.__str__().split()))
