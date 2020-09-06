class Calculator :
    ### Enter Your Code Here ###
    def __init__(self,x):
        self.x = x
    def __add__(self,y):
        return self.x+y.x
        
    def __sub__(self,y):
        return self.x-y.x
    
    def __mul__(self,y):
        return self.x*y.x
    def __truediv__(self,y):
        return self.x/y.x

x,y = input("Enter num1 num2 : ").split(",")
x,y = Calculator(int(x)),Calculator(int(y))
print(x+y,x-y,x*y,x/y,sep = "\n")

