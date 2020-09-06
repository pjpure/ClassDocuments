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

    def isEmpty(self):
        return self.item == []

    def size(self):
        return len(self.item)


def encode(q1, i):
    q2 = Queue(i.item.copy())
    for _ in range(q1.size()):
        a = ord(q1.deQueue())
        if a >= 65 and a <= 90:
            b = int(q2.deQueue())
            q1.enQueue(chr(((a+b)-65) % 26+65))
            q2.enQueue(b)
        elif a >= 97 and a <= 122:
            b = int(q2.deQueue())
            q1.enQueue(chr(((a+b)-97) % 26+97))
            q2.enQueue(b)
    return q1.item


def decode(q1, i):
    q2 = Queue(i.item.copy())
    for _ in range(q1.size()):
        a = ord(q1.deQueue())
        if a >= 65 and a <= 90:
            b = int(q2.deQueue())
            q1.enQueue(chr(((a-b)-65) % 26+65))
            q2.enQueue(b)
        elif a >= 97 and a <= 122:
            b = int(q2.deQueue())
            q1.enQueue(chr(((a-b)-97) % 26+97))
            q2.enQueue(b)
    return q1.item


s, n = map(list, input("Enter String and Code : ").split(','))

q1 = Queue(s)
q2 = Queue(n)
print("Encode message is : ",encode(q1,q2))
print("Decode message is : ",decode(q1,q2))