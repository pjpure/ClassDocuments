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
			print(i,':',sorted(qq[i].item))
			while not qq[i].isEmpty():
				q.enQueue(qq[i].deQueue())
			
	return q.item

inp = input("Enter Input : ").split()
for i in range(len(inp)):
	inp[i] = int(inp[i])
print(radix_sort(inp))