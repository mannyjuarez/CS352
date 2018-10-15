
count(List, Condition, Count) :-
    include(Condition, List, Filtered),
    length(Filtered, Count).

occurrences([],_,0).
occurrences([X|Y],X,N):- occurrences(Y,X,W),N is W + 1.
occurrences([X|Y],Z,N):- occurrences(Y,Z,N),X\=Z.


encode([], []).

encode([X|XT], [[Count, X] | RestEncoded]) :-
    consume([X|XT], X, Count, Rest),
    encode(Rest, RestEncoded).

consume([], _, 0, []).
consume([X|XT], X, Count, Rest) :-
    consume(XT, X, SubCount, Rest),
    succ(SubCount, Count).
consume([X|XT], Y, 0, [X|XT]) :- X \= Y.

count(_, [], 0).
count(Num, [H|T], X) :- dif(Num,H), count(Num, T, X).
count(Num, [H|T], X) :- Num = H, count(Num, T, X1), X is X1 + 1.