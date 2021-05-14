triplas([X, Y, Z]) :-
    X =\= Y, Y =\= Z, Z =\= X,
    X > -1, X <10,
    Y > -1, Y <10,
    Z > -1, Z <10,
    Eq1 is (10 * X + Y) / (10 * Y + Z),
    Eq2 is X/Z,
    Eq1 == Eq2.

% resposta incorreta do exercicio