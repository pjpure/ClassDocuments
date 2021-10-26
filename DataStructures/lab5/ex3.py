class Node:
    def __init__(self, data, next=None):
        self.data = data
        if next is None:
            self.next = None
        else:
            self.next = next

    def __str__(self):
        return str(self.data)


def createList(l=[]):
    head = Node(int(l[0]), int(l[1]))
    p = head
    for i in range(1, len(l)):
        if i < len(l)-1:
            p.next = Node(int(l[i]), int(l[i+1]))
        else:
            p.next = Node(int(l[i]), None)
        p = p.next
    return head


def printList(H):
    while H != None:
        print(H, end=' ')
        H = H.next
    print()


def mergeOrderesList(p, q):
    if p.data <= q.data:
        head = p
        f = p
        l = q
    else:
        head = q
        f = q
        l = p
    while l != None:
        if l.data <= f.next.data:
            a = l.next
            l.next = f.next
            f.next = l
            l = a
        else:
            if f.next.next == None:
                f.next.next = l
                break
            else:
                f = f.next
    return head


#################### FIX comand ####################
# input only a number save in L1,L2
inp = input("Enter 2 Lists : ").split()
L1 = inp[0].split(',')
L2 = inp[1].split(',')
LL1 = createList(L1)
LL2 = createList(L2)
print('LL1 : ', end='')
printList(LL1)
print('LL2 : ', end='')
printList(LL2)
m = mergeOrderesList(LL1, LL2)
print('Merge Result : ', end='')
printList(m)

