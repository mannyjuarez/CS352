from math import sqrt

def opsome (test, op, L) :
    if len(L) == 0 :
        return L
    elif test(L[0]) :
        return [op(L[0])] + opsome (test, op, L[1:])
    else :
        return [L[0]] + opsome (test, op, L[1:])

def oddp (n) :
    if n % 2 == 1 :
        return True
    else :
        return False

def sq (n) :
    return n * n

def isPrime (n) :
    if n < 2 :
        return False
    elif n == 2 :
        return True
    else :
        for d in range (2, int(sqrt(n))+1) :
            if n % d == 0 :
                return False
        return True

def double (x) :
    return 2 * x

print(opsome (oddp, sq, []))
print(opsome (oddp, sq, [2]))
print(opsome (oddp, sq, [3]))
print(opsome (oddp, sq, [3, 6, 4, 5, 2]))

print(opsome(isPrime, double, []))
print(opsome(isPrime, double, [2]))
print(opsome(isPrime, double, [3]))
print(opsome(isPrime, double, [3, 6, 4, 5, 2]))

                                    
    
