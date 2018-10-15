spec(comp1, pc, 32).                       /*computer 1 is a PC with 32MB memory available.*/
spec(comp2, mac, 128).                                    
spec(comp3, pc, 64).                                       
runs(pc, movie_edit, 96).     /*pc runs a movie_edit software that needs 96 MB memory*/
runs(pc, vb, 16).                                          
runs(pc, cpp, 28).                                         
runs(mac, vb, 24).                                         
runs(mac, prolog, 128).                                    
access(judy, comp1).               /*judy has access to computer 1*/
access(peter, comp3).                                      
access(david, comp1).                                      
access(david, comp2).   

can_use(P, SW) :-
	access(P, X),
	spec(X, Y, Z),
	runs(Y, SW, W),
	Z >= W.

my_flatten([], []) :- !.
my_flatten([L|Ls], FlatL) :-
    !,
    my_flatten(L, NewL),
    my_flatten(Ls, NewLs),
    append(NewL, NewLs, FlatL).
my_flatten(L, [L]).

/* python version */
/* 
def flatten(S):
    if S == []:
        return S
    if isinstance(S[0], list):
        return flatten(S[0]) + flatten(S[1:])
    return S[:1] + flatten(S[1:])
*/

getGrade(X, Y) :-
	X < 0,
	Y = "I".
getGrade(X, Y) :-
	X > 100,
	Y = "I".
getGrade(X,Y) :-
	X >= 0,
	X =< 60,
	Y = "F".
getGrade(X,Y) :-
	X > 60,
	X =< 80,
	Y = "G".
getGrade(X,Y) :-
	X > 80,
	X =< 100,
	Y = "E".


/*
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
*/


natural(0). 
natural(X) :- 
	natural(Y), 
	X is Y+1. 

cubedNatural(X) :- 
	natural(Y),
	X is Y*Y*Y.

count(_, [], 0).
count(Num, [H|T], X) :- dif(Num,H), count(Num, T, X).
count(Num, [H|T], X) :- Num = H, count(Num, T, X1), X is X1 + 1.

samefreq(X, Y, Z) :-
	count(Z, X, N),
	count(Z, Y, T),
	N = T.

/*

?- can_use(david, prolog).
true.

?- can_use(judy, X).
X = vb ;
X = cpp.

?- can_use(X, movie_edit).
false.

?- my_flatten([a, [b, [c, d], e]], X).
X = [a, b, c, d, e].

?-  getGrade(30,G).
G = "F" .

?- getGrade(-6,G).
G = "I" .

?- getGrade(104,G).
G = "I" .

?- getGrade(90,G).
G = "E".

gen(10, L)

[8, 13, 14, 19, 20, 19, 20, 5, 20, 9]

gen(7, L)

[8, 11, 12, 19, 8, 17, 10]

?-  samefreq([a,a,a,a,b,c,c,a,a,d,e,e,e,e], [b,b,a,c,a,a,a,d,a,a,e,e], a).
true .

?- samefreq([a,a,a,a,b,c,c,a,a,d,e,e,e,e], [b,b,a,c,a,a,a,d,a,a,e,e], b).
false.

?- samefreq([],[],c).
true .
*/