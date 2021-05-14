% ex 6

bissexto(X) :-
    A is mod(X,4), A =:= 0,
    B is mod(X,100), B =\= 0;
    C is mod(X,400), C =:= 0.
