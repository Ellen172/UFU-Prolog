% ?- assert(q(a,b)), assertz(q(1,2)),  asserta(q(foo ,blug )).
% true.

% base de dados
% q(foo, blug).
% q(a, b).
% q(1, 2).

% ?- retract(q(1,2)),  assertz( (p(X) :-   h(X)) ).
% true.

% base de dados
% q(foo, blug).
% q(a, b).
% p(X) :- h(X).

% ?- retract(q(_,_)),fail.
% false.

% base de dados
% p(X) :- h(X).