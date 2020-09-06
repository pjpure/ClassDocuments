class funString():
    def lenStr(self, s):
        return len(s)

    def swStr(self, s):
        x = ""
        for i in range(len(s)):
            if ord(s[i]) > 90:
                x += chr(ord(s[i])-32)
            else:
                x += chr(ord(s[i])+32)
        return x

    def revStr(self, s):
        x = ""
        for i in range(len(s)-1, -1, -1):
            x += s[i]
        return x

    def remStr(self, s):
        x = ""
        for i in range(len(s)):
            if s[i] not in x:
                x += s[i]
        return x


fs = funString()
lis = list(input("Enter String and Number of Function : ").split(' '))
s = lis[0]
num = int(lis[1])
if num == 1:
    print(fs.lenStr(s))
elif num == 2:
    print(fs.swStr(s))
elif num == 3:
    print(fs.revStr(s))
else:
    print(fs.remStr(s))
