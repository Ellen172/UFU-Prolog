termoComplexo(X) :- 
    nonvar(X),
    functor(X, _, A),
    A > 0.  

tipotermo(X,'atomo') :- atom(X).
tipotermo(X,'numero') :- number(X).
tipotermo(X,'constante') :- atomic(X).
tipotermo(X,'variavel') :- var(X).
tipotermo(X, 'termo_complexo') :- termoComplexo(X).
tipotermo(X, 'termo_simples') :- \+termoComplexo(X).
tipotermo(_,'termo').