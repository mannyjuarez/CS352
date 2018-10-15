import cmath

a = 0
b = 4
c = 4

d = (b**2) - (4*a*c)

if a == 0:
   sol = -c/b
   print(sol)
else:
    sol1 = (-b + cmath.sqrt(d))/(2*a)
    sol2 = (-b - cmath.sqrt(d))/(2*a)
    print(sol1, sol2)

'''
(1+0j) (-0.5+0j)
(-2+0j) (-2+0j)
0j (-3.6666666666666665+0j)
1.4142135623730951j -1.4142135623730951j
-1.0
'''
