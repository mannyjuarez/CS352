power(X,N,V) :- 
	X = 0,
	N > 0,
	V is 0.

power(X,N,V) :-
	X > 0,
	N = 0,
	V is 1.

power(X,N,V) :-
	X = 0,
	N = 0,
	V.

power(X,N,V) :-
	pow(X,N,V).

power(X,N,V) :-
	X = 0, 
	(N > 0 -> 
	V is 0;
	V).

power(X,N,V) :-
	X > 0,
	( N = 0 ->
	V is 1;
	pow(X,N,V)).


randseq(X,Y) :-
	length(Y, X),
	maplist(random(1,100), Y).