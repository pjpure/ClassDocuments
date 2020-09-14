class LinkedList:
    class Node:
        def __init__(self, data, next=None, prev=None):
            self.data = data
            if next is None:
                self.next = None
            else:
                self.next = next
            if prev is None:
                self.prev = None
            else:
                self.prev = prev

    def __init__(self):
        self.head = self.Node(None, None, None)
        self.head.next = self.head
        self.head.prev = self.head
        self.size = 0

    def __str__(self):
        s = ''
        p = self.head.next
        for i in range(self.size):
            s += str(p.data) + ' '
            p = p.next
        return s

    def isEmpty(self):
        return self.size == 0

    def indexOf(self, data):
        p = self.head.next
        for i in range(self.size):
            if p.data == data:
                return i
            p = p.next
        return -1

    def isIn(self, data):
        return self.indexOf(data) >= 0

    def nodeAt(self, index):
        p = self.head
        for i in range(-1, index):
            p = p.next
        return p

    def insertBefore(self, q, data):
        p = q.prev
        x = self.Node(data, q, p)
        q.prev = x
        p.next = x
        self.size += 1

    def append(self, data):
        self.insertBefore(self.nodeAt(self.size), data)

    def add(self, index, data):
        self.insertBefore(self.nodeAt(index), data)

    def removeNode(self, q):
        p = q.prev
        x = q.next
        p.next = x
        x.prev = p
        self.size -= 1

    def delete(self, index):
        self.removeNode(self.nodeAt(index))

    def remove(self,data):
        self.removeNode(self.nodeAt(self.indexOf(data)))

    def moveLeft(self,data):
        i = self.indexOf(data)
        if i>0:
            p = self.nodeAt(i)
            q = p.prev
            d = p.data
            p.data = q.data
            q.data = d

    def moveRight(self,data):
        i = self.indexOf(data)
        if i < self.size-1:
            p = self.nodeAt(i)
            q = p.next
            d = p.data
            p.data = q.data
            q.data = d




class TextEditor:

    def __init__(self):
        self.text = LinkedList()
        self.text.append('|')
        
    def insert(self,word):
        self.text.insertBefore(self.text.nodeAt(self.text.indexOf('|')),word)

    def left(self):
        self.text.moveLeft('|')

    def right(self):
        self.text.moveRight('|')

    def backspace(self):
        i = self.text.indexOf('|')
        if i>0:
            self.text.delete(i-1)
    
    def delete(self):
        i = self.text.indexOf('|')
        if i+1 < self.text.size :
            self.text.delete(i+1)

t = TextEditor()
inp = input('Enter Input : ').split(',')
for item in inp:
    item = item.split()
    if item[0]=='I':
        t.insert(item[1])
    elif item[0]=='L':
        t.left()
    elif item[0]=='R':
        t.right()
    elif item[0]=='B':
        t.backspace()
    elif item[0]=='D':
        t.delete()
print(t.text)
    