% incompleto

:- op(550, xfx, <-).
:- op(540, xfx, igual).
:- op(530, xfx, ++).
:- op(520, xfx, **).
:- op(510, xfx, h).

Horario <- H1 ++ H2 :-
    soma_hora(H1, H2, Horario).
Horario <- X ** H :-
    mult_hora(X, H, Horario).

soma_hora(A h B, C h D, Hora h Min) :- 
    Min is B + D,
    Min < 60,
    Hora is A + C.
soma_hora(A h B, C h D, Hora h NovoMin) :- 
    Min is B + D,
    Min > 59,
    NovoMin is Min - 60,
    Hora is A + C + 1.

mult_hora(X, Hora h Min, Hfinal h Minfinal) :-
    NovoMin is Min * X,
    mult_ac(X, 0, Hora h NovoMin, Hfinal h Minfinal).
mult_ac(X, Ac, Hora h Min, Hfinal h Minfinal) :-
    Min < 60,
    Minfinal is Min,
    Hfinal is (Hora * X) + Ac.
mult_ac(X, Ac, Hora h Min, Hfinal h Minfinal) :-
    Min > 59, 
    NovoMin is Min - 60, 
    NovoAc is Ac + 1,
    mult_ac(X, NovoAc, Hora h NovoMin, Hfinal h Minfinal).



/*
Hora h Min <- H1 h M1 ++ H2 h M2 :-
    Min is M1 + M2,
    Min < 60,
    Hora is H1 + H2.
Hora h Min <- H1 h M1 ++ H2 h M2 :-
    NovoMin is M1 + M2, 
    NovoMin > 59, 
    Min is NovoMin - 60,
    Hora is H1 + H2 + 1.

Hfinal h Mfinal <- Hora h Min ++ Hora h Min :-
    

Hora h Min <- X ** H h M :-
    NovoM is M * X,
    mult_ac(X, 0, H h NovoM, Hora h Min).


mult_ac(X, Ac, Hora h Min, Hfinal h Minfinal) :-
    Min < 60,
    Minfinal is Min,
    Hfinal is (Hora * X) + Ac.

mult_ac(X, Ac, Hora h Min, Hfinal h Minfinal) :-
    Min > 59, 
    NovoMin is Min - 60, 
    NovoAc is Ac + 1,
    mult_ac(X, NovoAc, Hora h NovoMin, Hfinal h Minfinal).
*/