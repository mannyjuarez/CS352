randseq(C, Y) :- findnsols(C, U, (repeat, random(1, 100, U)), Y).