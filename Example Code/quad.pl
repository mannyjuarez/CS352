%simplified quad equation ax^2+bx+c=0 solution.
%Simplification: if a = 0, or b^2-4*a*c<0 let x1=0, x2=0.

quad(0,B, C, 0, 0).
quad(A,B,C, X1, X2) :-
	D is B * B - 4 * A * C, 
	D >= 0, 
	R is sqrt(D),
	X1 is (-B + R) / (2 * A), 
	X2 is (-B - R) / (2 * A).
quad(A,B,C, X1, X2) :- 
	D is B * B - 4 * A * C,
	D < 0, 
	X1 is 0, 
	X2 is 0.


