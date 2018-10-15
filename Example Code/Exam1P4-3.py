lst = [["maria", 92], ["bob", 96], ["alan", 92], ["sue", 95], ["jin", 95]]

def comp (p1, p2) :
    if p1[1] > p2[1] :
        return True
    elif p1[1] < p2[1] :
        return False
    else :
        return p1[0] < p2[0]

def mySort (L, key) :
    if len(L) <= 1 :
         return L
    else:
        return insert(L[0], mySort (L[1:], key), key)

def insert (a, L, key) :
    if len(L) == 0 :
        return [a]
    elif key (a, L[0]):
        return [a] + L
    else :
        return [L[0]] + insert(a, L[1:], key)

print(mySort (lst, comp))


