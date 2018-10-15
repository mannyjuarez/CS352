happyandsad(X) :-
	happy(X),
	sad(X).

happylikessad(X) :- 
	happy(X), 
	sad(Y), 
	likes(X,Y).

happy(X) :-
	likes(X, corvettes).

likes(X, mary) :-
	likes(X, X).

happy(X) :-
		likes(Y, X).

maximum([], M) :-
	M is 0.
maximum([H|T], Y):-  
    maximum(T,X),
    (H > X ->
     H = Y;
     Y = X).
maximum([X],X).

rand(X) :-
	random(X).

rand5(Y) :-
		length(Y, 5),
		maplist(random(1,100), Y).

natural(0). 
natural(X) :- 
	natural(Y), 
	X is Y+1. 

squaredNatural(X) :- 
	natural(Y),
	X is Y*Y.
