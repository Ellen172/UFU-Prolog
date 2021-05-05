for(X, [X,Z]) :- X=<Z.
for(X, [Y,Z]) :-
    W is Y+1,
    W=<Z,
    for(X, [W,Z]).

% ?- for(X, [1,3]), write(X), nl, fail.
% 1
% 2
% 3
% false