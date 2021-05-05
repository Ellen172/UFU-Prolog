:-op(970, xfx, <=>). % bi-implicação
:-op(960, xfy, =>). % implicação
:-op(950, xfy, v). % ou
:-op(940, xfy, &). % e
:-op(930, fy, ~). % não

% verificar se é um formula
formula(true).
formula(false).
formula(S):- atom(S).
formula(~H) :- formula(H).
formula(H v G) :- formula(H), formula(G).
formula(H & G) :- formula(H), formula(G).
formula(H => G) :- formula(H), formula(G).
formula(H <=> G) :- formula(H), formula(G).

% verificar comprimento da formula
comp(true,1).
comp(false,1).
comp(S, 1) :- atom(S).

comp(~H, C) :- 
    comp(H, Ch), 
    C is Ch + 1.

comp(H v G, C) :-
    comp(H, Ch), 
    comp(G, Cg),
    C is Ch + Cg + 1.

comp(H & G, C) :-
    comp(H, Ch),
    comp(G, Cg), 
    C is Ch + Cg + 1.

comp(H => G, C) :-
    comp(H, Ch),
    comp(G, Cg), 
    C is Ch + Cg + 1.

comp(H <=> G, C) :-
    comp(H, Ch),
    comp(G, Cg), 
    C is Ch + Cg + 1.

% dar um valor true ou false para o atom.
:- dynamic resposta/2.

pergunta(P, I) :- resposta(P,I), !.
pergunta(P, I) :-
    repeat, 
    write('Digite a interpretacao para '), 
    write(P), write(': '), read(I),
    ( I = t; I = f),
    assert(resposta(P, I)).

% verificar interpretação do valor dado
interpretacao(true, t) :- !.
interpretacao(false, f) :- !.

interpretacao(P, I) :-
    atom(P), 
    pergunta(P, Resp), !, 
    I = Resp.

interpretacao(~H, t) :-
    interpretacao(H,f), !.
interpretacao(~H, f) :-
    interpretacao(H, t), !.

interpretacao(H v G, t) :-
    interpretacao(H,t), 
    interpretacao(G,t), !.
interpretacao(H v G, t) :-
    interpretacao(H,t), 
    interpretacao(G,f), !.
interpretacao(H v G, t) :-
    interpretacao(H,f), 
    interpretacao(G,t), !.
interpretacao(H v G, f) :-
    interpretacao(H,f), 
    interpretacao(G,f), !.

interpretacao(H & G, t) :-
    interpretacao(H,t), 
    interpretacao(G,t), !.
interpretacao(H & G, f) :-
    interpretacao(H,f), 
    interpretacao(G,t), !.
interpretacao(H & G, f) :-
    interpretacao(H,t), 
    interpretacao(G,f), !.
interpretacao(H & G, f) :-
    interpretacao(H,f), 
    interpretacao(G,f), !.

interpretacao(H => G, t) :-
    interpretacao(H,t),
    interpretacao(G,t), !.
interpretacao(H => G, t) :-
    interpretacao(H,f),
    interpretacao(G,t), !.
interpretacao(H => G, t) :-
    interpretacao(H,f),
    interpretacao(G,f), !.
interpretacao(H => G, f) :-
    interpretacao(H,t),
    interpretacao(G,f), !.

interpretacao(H <=> G, t) :-
    interpretacao(H,Ih),
    interpretacao(G,Ig), !, 
    Ig = Ih.
interpretacao(H <=> G, t) :-
    interpretacao(H,Ih),
    interpretacao(G,Ig), !, 
    Ig \= Ih.

interpreta(F, I):-
    retractall(resposta(_, _)),
    interpretacao(F, I).