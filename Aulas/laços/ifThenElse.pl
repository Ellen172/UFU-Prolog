ifThenElse(T, E, _) :- T, !, E.
ifThenElse(_, _, S) :- S.
% (condicao, resposta_se, resposta_senão)

maior(X, Y, Z) :-
    ifThenElse(X>Y, Z=X, Z=Y).

% ?- maior(2, 3, Z).
% Z = 3
% ?- maior(4, 3, Z).
% Z = 4

maior2(X, Y, Z) :-
    X > Y -> % condição  
    Z = X; % resposta_se
    Z = Y. % resposta_senão

% ?- maior2(2,3,Z).
% Z = 3
% ?- maior2(4,3,Z).
% Z = 4

maior_mais_um(X, Y, Z) :-
    (X > Y -> S is X+1; S is Y+1), 
    Z = S.

% ?- maior_mais_um(2,3,Z).
% Z = 4
% ?- maior_mais_um(4,3,X).
% X = 5