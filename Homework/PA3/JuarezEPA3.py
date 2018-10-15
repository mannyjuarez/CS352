from random import randint
from random import uniform
import re

list1 = []
for num in range(0,20):
    list1.append(randint(0,100))
    
list2 = []
for num in range(0,20):
    list2.append(uniform(10.0, 80.0))


i = "NIL"   
j = "((2 1) (1 0))"
k = "((3 2) (-1 0))"
l = "((5 2) (-4 1) (1 0))"
m = "((7 14) (11 13) (-3 2) (7 1) (-5 0))"
n = "((1 0) (2 1) (-5 3) (-3 1) (7 0))"

def WRITEPOLY(str):
    temp = str.replace("(","").replace(")","")
    list3 = temp.split()
    counter = 0;
    temp2 = ""
    if str == "NIL":
        temp2 = "0"
    else:
       for num in range(0, len(list3)):
           if counter % 2 == 0:
               if int(list3[num]) > 0:
                   temp2 += "+" + list3[num]
               else:
                   temp2 += list3[num]

           if counter % 2 == 1 and list3[num] != '0':
               if int(list3[num]) > 1:
                   temp2 += "x^" + list3[num]
               elif int(list3[num]) == 1:
                   temp2 += "x"
           counter += 1
    print(temp2)

print(list1)
print(list2)
WRITEPOLY(i)
WRITEPOLY(j)
WRITEPOLY(k)
WRITEPOLY(l)
WRITEPOLY(m)
WRITEPOLY(n)

'''
[87, 96, 40, 1, 5, 92, 78, 66, 58, 16, 43, 46, 60, 47, 90, 94, 22, 14, 53, 6]
[55.328656285542706, 68.3351231499128, 34.44425168790086, 66.99962393028088, 17.870616408099842, 58.96759104355705, 25.84746708099847, 49.749370283641014, 39.156764759757465, 37.76403127672398, 69.8440903003739, 44.71022571631593, 10.537467298112183, 60.432551031453315, 51.46081814486608, 43.149560545451976, 28.950632176540424, 63.62383460526351, 64.88621994986548, 34.330095609016354]
0
+2x+1
+3x^2-1
+5x^2-4x+1
+7x^14+11x^13-3x^2+7x-5
+1+2x-5x^3-3x+7
'''
