def All_eq(lst1, lst2):
    if len(lst1) == 0 == len(lst2) == 0:
        return True
    if len(lst1) != len(lst2):
        return False
    if lst1[0] != lst2[0]:
        return False
    return All_eq(lst1[1:], lst2[1:])

list1 = (3,1,4)
list2 = (3,1,4)
print(All_eq(list1, list2))
