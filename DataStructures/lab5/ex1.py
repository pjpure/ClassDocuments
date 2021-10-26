class LinkedList:
    class Node:
        def __init__(self, data, next=None):
            self.data = data
            if next is None:
                self.next = None
            else:
                self.next = next
    
    def __init__(self):
        self.header = self.Node(None)
        self.size = 0

    def __str__(self):
        s='link list : '
        p = self.header.next
        while p != None:
            s += str(p.data)
            if p.next != None:
                s+='->'
            p = p.next
        return s
    
    def isEmpty(self):
        return self.size==0

    def insert(self,index,data):
        p = self.header
        for _ in range(-1, index):
            p = p.next
        p.next = self.Node(data, p.next)
        self.size += 1
        
    def append(self,data):
        self.insert(self.size-1,data)

l = LinkedList()
x = input("Enter Input : ").split(',')
a = x[0].split() 
b = x[1:]

for item in a:
    l.append(item)
if len(a)==0:
    print('List is empty')
else:
    print(l)
for item in b:
    item = item.strip()
    item = item.split(':')
    if int(item[0])<=l.size and int(item[0])>=0:
        print('index =',item[0],'and','data =',item[1])
        l.insert(int(item[0])-1,item[1])
        print(l)
    else:
        print('Data cannot be added')
        if l.size==0:
            print('List is empty')
        else:
            print(l)




