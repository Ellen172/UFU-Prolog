:- op(550, xfx, h).

soma_hora(A h B, C h D, Hora h Min) :- 
    Min is B + D,
    Min < 60,
    Hora is A + C.

soma_hora(A h B, C h D, Hora h NovoMin) :- 
    Min is B + D,
    Min > 59,
    NovoMin is Min - 60,
    Hora is A + C + 1.
    