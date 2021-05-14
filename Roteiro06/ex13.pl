classe(Numero, X):- 
    Numero > 0, !,
    X = 'positivo'.
classe(Numero, X):- 
    Numero < 0, !, 
    X = 'negativo'.
classe(0,zero).

% O programa recebe um numero e verifica se ele é positivo, negativo ou zero.