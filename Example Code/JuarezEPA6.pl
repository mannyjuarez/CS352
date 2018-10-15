bmi(A,0,0).

bmi(A,B,C) :-
	S is B * B,
	R is A / S * 703,
	C is R.