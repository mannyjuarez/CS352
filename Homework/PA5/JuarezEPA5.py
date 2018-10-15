def square(n):
    return n * n

def double(n):
    return n + n

def isPrime(n):
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True

def oddp(n):
    if n % 2 == 1:
        return True
    else:
        return False

def OPSOME(some, another, n):
    list1 = []
    for x in n:
       if some(x) == True:
             list1.append(another(x))
       else:
            list1.append(x)
    return list1

l = []
l1 = [2]
l2 = [3]
l3 = [3,6,4,5,2]

print(OPSOME(oddp, square, l))
print(OPSOME(oddp, square, l1))
print(OPSOME(oddp, square, l2))
print(OPSOME(oddp, square, l3))
print(" ")
print(OPSOME(isPrime, double, l1))
print(OPSOME(isPrime, double, l2))
print(OPSOME(isPrime, double, l3))


'''
[]
[2]
[9]
[9, 6, 4, 25, 2]
 
[4]
[6]
[6, 6, 4, 10, 4]

'''
