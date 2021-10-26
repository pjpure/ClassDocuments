print(" *** Summation of each digit ***")
num = int(input("Enter a positive number : "))
sum = 0
l = len(str(num))
int(num)
for i in range(l+1):
    sum += num//(10**(l-i-1))
    num = num % (10**(l-i-1))

print("Summation of each digit = ",int(sum))
    
