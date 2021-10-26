from stack import Stack


def match(open, close):
    openP = "([{"
    closeP = ")]}"
    return openP.index(open) == closeP.index(close)


s1 = input("input : ")
s = Stack()
error = False
openP = "([{"
closeP = ")]}"

for i in range(len(s1)):
    if s1[i] in openP:
        s.push(s1[i])
    elif s1[i] in closeP:
        if s.isEmpty():
            error = True
        else:
            open = s.pop()
            if not match(open, s1[i]):
                error = True
if error :
    print("MISMATCH")
else :
    if s.isEmpty():
        print("MATCH")
    else:
        print("MISMATCH open paren. exceed")

