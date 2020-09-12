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

