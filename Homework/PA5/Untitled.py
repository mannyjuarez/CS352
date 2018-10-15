def table(lb, ub, func):
    result = ""
    for x in range(lb, ub):
        result += str(x)
        result += "\t"
        result += str(func(x))
        print(result)
        result = ""

def square(n):
    return n * n

def isPrime(n):
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True

table(1,5, isPrime)
