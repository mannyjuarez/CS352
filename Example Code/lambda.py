f = lambda a,b,c, : (b+c) * a

print(f(4,3,5))

list1 = ("A", "3", "B", "2", "4")
def isNumber(n):
    if (str.isnumeric(n)):
        return True
    return False

result = map(isNumber, list1)
print(list(result))

