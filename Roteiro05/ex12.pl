s(Conta) --> as(Conta), bs(Conta), cs(Conta). 

as(0) --> [].
as(suc(Conta)) --> [a], as(Conta).

bs(0) --> [].
bs(suc(Conta)) --> [b], bs(Conta).

cs(0) --> [].
cs(suc(Conta)) --> [c], cs(Conta).

% ?- s(X,[a, b, c],[]).
% X = suc(0) ;
% false.

% ?- s(X,[a, b, b, b, c],[]).
% false.

% ?- s(X,[a, a, a, b, b, b, c],[]).
% false.