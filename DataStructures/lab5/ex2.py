class Node:
    def __init__(self, value):
        self.value = value
        self.next = None
        self.previous = None

class LinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

    def __str__(self):
        if self.isEmpty():
            return "Empty"
        cur, s = self.head, str(self.head.value) + " "
        while cur.next != None:
            s += str(cur.next.value) + " "
            cur = cur.next
        return s

    def reverse(self):
        if self.isEmpty():
            return "Empty"
        cur, s = self.tail, str(self.tail.value) + " "
        while cur.previous != None:
            s += str(cur.previous.value) + " "
            cur = cur.previous
        return s

    def isEmpty(self):
        return self.head == None

    def append(self, item):
        if self.isEmpty():
            x = Node(item)
            self.head = x
            self.tail = x
        else:
            x = Node(item)
            cur = self.tail
            cur.next = x
            x.previous = cur
            self.tail = x
        
    def addHead(self, item):
        if self.isEmpty():
            x = Node(item)
            self.head = x
            self.tail = x
        else:
            x = Node(item)
            cur = self.head
            cur.previous = x
            x.next = cur
            self.head = x

    def insert(self, pos, item):
        cur = self.head
        x = Node(item)
        if self.isEmpty():
            x = Node(item)
            self.head = x
            self.tail = x
        else:
            if pos == 0:
                x.next = cur
                cur.previous = x
                self.head = x
            elif pos > 0:
                if pos >= self.size():
                    self.append(item)
                else:
                    for i in range(pos-1):
                        cur=cur.next
                    x.next = cur.next
                    cur.next.previous = x
                    cur.next = x
                    x.previous = cur
            else:
                if self.size()+pos < 1:
                    self.addHead(item)
                else:
                    for i in range(self.size()+pos-1):
                        cur=cur.next 
                    x.next = cur.next
                    cur.next.previous = x
                    cur.next = x
                    x.previous = cur   

    def search(self, item):
        cur = self.head
        while cur != None:
            if cur.value == item:
                return "Found"
            cur = cur.next
        return "Not Found"

    def index(self, item):
        cur = self.head
        index = 0
        while cur != None:
            if cur.value == item:
                return index
            index+=1
            cur = cur.next
        return -1
        

    def size(self):
        if self.isEmpty():
            return 0
        else:
            cur = self.head
            count = 0
            while cur != None:
                cur = cur.next
                count += 1
            return count

    def pop(self, pos):
        if self.isEmpty() or pos>=self.size():
            return "Out of Range"
        else:
            cur = self.head
            if pos == 0:
                self.head = cur.next 
                return "Success"
            else:
                for i in range(pos-1):
                    cur = cur.next
                cur.next = cur.next.next
                cur.next.previous = cur
                return "Success"

L = LinkedList()
inp = input('Enter Input : ').split(',')
for i in inp:
    if i[:2] == "AP":
        L.append(i[3:])
    elif i[:2] == "AH":
        L.addHead(i[3:])
    elif i[:2] == "SE":
        print("{0} {1} in {2}".format(L.search(i[3:]), i[3:], L))
    elif i[:2] == "SI":
        print("Linked List size = {0} : {1}".format(L.size(), L))
    elif i[:2] == "ID":
        print("Index ({0}) = {1} : {2}".format(i[3:], L.index(i[3:]), L))
    elif i[:2] == "PO":
        before = "{}".format(L)
        k = L.pop(int(i[3:]))
        print(("{0} | {1}-> {2}".format(k, before, L)) if k == "Success" else ("{0} | {1}".format(k, L)))
    elif i[:2] == "IS":
        data = i[3:].split()
        L.insert(int(data[0]), data[1])
print("Linked List :", L)
print("Linked List Reverse :", L.reverse())