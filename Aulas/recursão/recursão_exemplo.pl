% EXERCICIOS DE FIXAÇÃO

enesimo(1,[H|_],H).
enesimo(N,[_|T],Elem) :-
	N1 is N - 1,
	enesimo(N1, T, Elem).

ultimo_falho(X,[_H,X]).
ultimo_falho(X,[_H|T]) :-
	ultimo_falho(X,T).
% nao vai servir para listas com 1 unico elemento.	

ultimo(X,[X]).
ultimo(X,[_H|T]) :-
	ultimo(X,T).
	
ultimo_append(X,L) :- 
	append(_,[X],L). 
% contatenando os dois primeiros elementos, se tem o terceiro.


% soma de uma lista de elementos.
somatorio([],0).
somatorio([H|T],S):-
	somatorio(T,S1),
	S is H + S1.
	
somaAcum([],Ac,Ac).
somaAcum([H|T], Ac, S) :-
	NovoAc is H + Ac,
	somaAcum(T,NovoAc,S).
soma(L,S) :- somaAcum(L, 0, S). 

% quantas vezes X aparece na lista L.
ocorrencias(_,[],0).
ocorrencias(X, [X|T], N) :-
	ocorrencias(X, T, N1),
	N is N1 + 1.
ocorrencias(X, [_|T], N) :- 
	ocorrencias(X, T, N).
	
ocorre(_,[],Ac, Ac).
ocorre(X, [X|T], Ac, N) :-
	Ac2 is Ac + 1,
	ocorre(X, T, Ac2, N).
ocorre(X, [_|T], Ac, N) :- 
	ocorre(X, T, Ac, N).
ocorreAcum(X, L, N) :- ocorre(X, L, 0, N).

% remover todos as aparicoes de X em determinada lista
removeTodos([],_X,[]).
removeTodos([X|T], X, L1) :-
	removeTodos(T, X, L1).
removeTodos([Y|T], X, [Y|L1]) :-
	removeTodos(T, X, L1).
	
% produto P de A e B.
produto(0, B, 0).
produto(A, 0, B).
produto(A, B, P) :- 
	A1 is A - 1,
	produto(A1, B, P1),
	P is B + P1.
	
pot(_B, 0, 1). 
pot(B, N, P) :- 
	N1 is N - 1,
	pot(B, N1, P1),
	P is P1 * B.
	
% selecionar os elementos da primeira lista dado a posicao na lsita 2.
seleciona([], _, _, []).
seleciona(_, [], _, []).
seleciona([X|Xs], [P|Ps], P, [X|Res]) :-
	P1 is P + 1,
	seleciona(Xs, Ps, P1, Res).
seleciona([_|Xs], Ps, P, Res) :-
	P1 is P + 1,
	selecione(Xs, Ps, P1, Res).

seleciona(L, P, Res) :-
	seleciona(L, P, 1, Res).