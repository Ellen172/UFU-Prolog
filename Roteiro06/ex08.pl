:- op(550, xfx, h).

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