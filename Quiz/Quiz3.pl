
bill(B, TP, TC) :-
	B = 0,
	TP is 0, 
	TC is 0.

bill(B, TP, TC) :-
	20 >= B ->
	TP is B / 10,
	TC is B + TP;
	TP is B * 15 / 100,
	TC is B + TP. 

male(john).
male(sam).	
female(mary).
female(alice).
female(jody).
parent(john, alice).
parent(john,jody).
parent(sam,mary).
parent(alice, mary).

is_father(X) :- 
	male(X), 
	parent(X,Y).

is_mother(X) :-
	female(X),
	parent(X,Y).

sister(X, Y) :- 
	female(X), 
	parent(X, Z), 
	parent(Y, Z),
	X \= Y.

is_aunt(X, Y) :- 
	sister(X, Z), 
	parent(Y, Z). 

is_grandfather(X) :-
	male(X), 
	parent(X, Y),
	is_father(Y).

is_grandfather(X) :-
	male(X),
	parent(X,Y),
	is_mother(Y).



square(X, Y) :- maplist(sq, X, Y).
sq(A, B) :- 
	B is A * A.

/*
?- bill(0,TP,TC).
TP = TC, TC = 0 

?- bill(10,TP,TC).
TP = 1,
TC = 11.

?- bill(30,TP,TC).
TP = 4.5,
TC = 34.5.

?- is_father(X).
X = john ;
X = john ;
X = sam ;

?- is_aunt(X, mary).
false.

?- is_grandfather(X).
X = john ;
false.

?- square([1,2,3,4],[1,4,9,16]).
true.

?- square([1, 2, 3, 4],R).
R = [1, 4, 9, 16].

?- square([],R).
R = [].

*/