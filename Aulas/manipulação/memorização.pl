:-dynamic consulta/3.

somaAoQuadrado(X,Y,Res):- 
    consulta(X,Y,Res), !.

somaAoQuadrado(X,Y,Res):- 
    \+consulta(X,Y,Res), !, %modificação de corte vermelho para corte verde
    Res is (X+Y) * (X+Y), 
    assert(consulta(X,Y,Res)).