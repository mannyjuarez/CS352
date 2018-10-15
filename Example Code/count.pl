%counting numbers. A PA4 problem.

count([],0).
count(X,S) :-
	number(X), S is 1.
count(X,S) :- 
	atom(X), S is 0.

count([X|Y], S) :-
	number(X), count(Y, S1), S is S1+1.

count([X|Y], S) :-
	atom(X), count(Y, S).

count([X|Y],S) :-
	is_list(X), count(X, S1), count(Y, S2), S is S1 + S2.
