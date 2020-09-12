class Node:
    def __init__(self, data, next=None):
        self.data = data
        if next is None:
            self.next = None
        else:
            self.next = next

    def __str__(self):
        return self.data

    def getData(self):
        return self.data

    def getNext(self):
        return self.next

    def setData(self, data):
        self.data = data

    def setNext(self, next):
        self.next = next


class LinkedList:
    def __init__(self):
        self.head = Node(None, None)
        self.size = 0

    def __str__(self):
        s = 'linked data : '
        p = self.head.next
        while p != None:
            s += str(p)+' '
            p = p.next
        return s

    def __len__(self):
        return self.size

    def isEmpty(self):
        return self.size == 0
    
    def append(self,data):
        p=self.head.next
        while p.next!=None:
            p=p.next
        p.next = data
    
    def addHead(self,data):
        p=self.head
        s=p.next
        p.next=data
        p.next.next=s

    def isIn(self,data):
        p=self.head.next
        while p!=None:
            if p == data:
                return True
            p=p.next
        return False

    def before(self,data):
        p=self.head.next
        while p!= None:
            if p.next == data:
                return p
            p=p.next
    
    def remove(self,data):
        p=self.before(data)
        s=p.next
        p.next=s.next
        return s
    
    def removeTail(self):
        p=self.head.next
        while p.next!=None:
            if p.next.next == None:
                s=p.next.data
                p.next=None
                return s
    
    def removeHead(self):
        p=self.head
        s=p.next.data
        p.next=p.next.next
        return s

l = LinkedList()
print(1)
l.addHead('A')



        

    
            
        







            


        
        

        


q = Node('A')
print(q)
r = Node('B', q)
print(r)
print(r.next)
a = Node('D')
print(a)
a.setData('C')
a.setNext(q)
print(a.getData())
print(a.getNext())
