%Ex. 1.

%(a)

objeto(mesa).
objeto(a).
objeto(b).

sobre(a,mesa).
sobre(b,a).

%(b)

% P: objeto1 acima do objeto2
% Q: objeto1 sobre objeto2 
% P -> Q

acima_de(X, Y) :- sobre(X,Y).

%(c)

% ?- acima_de(b,mesa).
% false