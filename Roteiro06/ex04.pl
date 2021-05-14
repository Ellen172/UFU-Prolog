var_arg(A, X, Y) :-
    A > 0,
    arg(A, X, Y),
    var(Y).
var_arg(A, X, Y) :-
    A > 0,
    arg(A, X, Y),
    NovoA is A - 1,
    var_arg(NovoA, X, NovoY).


termoaterrado(X) :- 
    nonvar(X),
    functor(X, _, A),
    A > 0, 
    \+var_arg(A, X, Y), !.  
    
termoaterrado(X) :- 
    nonvar(X),
    functor(X, _, A),
    A is 0. 