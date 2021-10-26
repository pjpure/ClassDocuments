class Stack:
    full=None
    def __init__(self,item = None):
        if item == None:
            self.item = []
        else:
            self.item = item
    
    def push(self,i):
        self.item.append(i)

    def pop(self):
        if not self.isEmpty():
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



