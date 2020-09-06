def multiples_of_3_and_5(n):
    sum = 0
    for i in range(n):
        if i*3 >n and i*5>n:
            break
        if i%3<n:
            sum+=i*3
        if i*5<n :
            sum+=i*5
    return sum

print(multiples_of_3_and_5(10))