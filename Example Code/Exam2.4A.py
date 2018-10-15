from random import *

def gen(X, Y):
    for i in range(0, X):
        if i % 2 == 0:
            n = randint(1,10)
            n = n * 2
            Y.append(n)
        else:
            n = randint(1,20)
            while n % 2 != 1:
                n = randint(1,20)
            Y.append(n)
L = []
gen(7, L)
print(L)


def flatten(S):
    if S == []:
        return S
    if isinstance(S[0], list):
        return flatten(S[0]) + flatten(S[1:])
    return S[:1] + flatten(S[1:])
