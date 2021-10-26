MemFree = int(input("MemFree(kB) : "))
Buffers = int(input("Buffers(kB) : "))
Cached = int(input("Cached(kB) : "))
MemTotal = int(input("MemTotal(kB) : "))
MemFBC = MemFree+Buffers+Cached
print()
print("MemFree + Buffers + Cached = ",MemFBC,"kB")
print("MemTotal : ",MemTotal,"kB")
print()
if MemTotal > MemFBC:
    print("MemTotal มากกว่า MemFree + Buffers + Cached อยู่",MemTotal-MemFBC,"kB")
elif MemTotal < MemFBC:
    print("MemTotal น้อยกว่า MemFree + Buffers + Cached อยู่",MemFBC-MemTotal,"kB")
else:
    print("MemTotal เท่ากับ MemFree + Buffers + Cached")
print()



