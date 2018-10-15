my_write([]).
my_write([X|R]):- write(X), nl, my_write(R).

inc(X, Y) :- maplist(succ, X, Y).

even(N) :- N mod 2 =:= 0.

sode(T,L):- 
	exclude(even, T, R),
	square(R, L).

square([], []).
square([L|Ls], [M|Ms]) :-
  ( number(L)
  ->  M is L * L, square(Ls, Ms)  
  ;   M = L, square(Ls, Ms)
  ).

/*
?- my_write([a,b,c]).
a
b
c
true.

?- inc([1,7,5], [2,8,6]).
true.

?- inc([1,7,5],X).
X = [2, 8, 6].

?- inc([1,7, 4, 2, 8, 12], Y).
Y = [2, 8, 5, 3, 9, 13].

?- inc([],X).
X = [].

?- inc([1,7,5], [2, 8, 5]).
false.

?- inc([1,7], [2, 8, 5]).
false.

?- inc([1,7,5], [2]).
false.

?- inc(X,[2,8,6]).
X = [1, 7, 5].

sode([],L).
L = [].

?- sode([1,2,3,4],L).
L = [1, 9].

?- sode([3,1,4,1,5,9],L).
L = [9, 1, 1, 25, 81].

*/