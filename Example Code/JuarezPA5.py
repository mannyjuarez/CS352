def sum(A, B):
    if not len(A):
        return B
    elif not len(B):
        return A

    return [A[0] + B[0]] + sum(A[1:], B[1:])

A = [3,1,4]
B = [8,2,5]
c = [3,1,4]
d = []


print(sum(A,B))
print(sum(c,d))
