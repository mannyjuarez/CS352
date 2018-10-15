mylist = [("b",3),("r",2),("g",1),("r",5),("b",2),("b",4)]

b = 0
r = 0
g = 0

def colorsum (l):
    if not l:
        return
    elif l[0] == "b":
        b += l[1]
        print(b)

colorsum(mylist)

