leiaPalavra(Fluxo,Palavra):-
    get_code(Fluxo,Caracter),
    verificaELeiaResto(Caracter,Caracteres,Fluxo),
    atom_codes(Palavra,Caracteres). 
    
verificaELeiaResto(10, [], _):- !.
verificaELeiaResto(32, [], _):- !.
verificaELeiaResto(-1, [], _):- !. 
verificaELeiaResto(Caracter,[Caracter|Caracteres],F):-
    get_code(F,ProxCaracter),
    verificaELeiaResto(ProxCaracter,Caracteres,F).