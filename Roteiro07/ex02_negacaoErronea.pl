aprecia(vicente,X):- 
    \+(bigKahunaBurger(X)),
    hamburguer(X). 

hamburguer(X):-  bigMac(X).
hamburguer(X):-  bigKahunaBurger(X).
hamburguer(X):-  whopper(X).

bigMac(a). 
bigKahunaBurger(b).
bigMac(c).
whopper(d).

% [trace]  ?- aprecia(vicente, a).
%    Call: (10) aprecia(vicente, a) ? creep
%    Call: (11) bigKahunaBurger(a) ? creep
%    Fail: (11) bigKahunaBurger(a) ? creep
%    Redo: (10) aprecia(vicente, a) ? creep
%    Call: (11) hamburguer(a) ? creep
%    Call: (12) bigMac(a) ? creep
%    Exit: (12) bigMac(a) ? creep
%    Exit: (11) hamburguer(a) ? creep
%    Exit: (10) aprecia(vicente, a) ? creep
% true ;
%    Redo: (11) hamburguer(a) ? creep
%    Call: (12) bigKahunaBurger(a) ? creep
%    Fail: (12) bigKahunaBurger(a) ? creep
%    Redo: (11) hamburguer(a) ? creep
%    Call: (12) whopper(a) ? creep
%    Fail: (12) whopper(a) ? creep
%    Fail: (11) hamburguer(a) ? creep
%    Fail: (10) aprecia(vicente, a) ? creep
% false.

% [trace]  ?- aprecia(vicente, b).
%    Call: (10) aprecia(vicente, b) ? creep
%    Call: (11) bigKahunaBurger(b) ? creep
%    Exit: (11) bigKahunaBurger(b) ? creep
%    Fail: (10) aprecia(vicente, b) ? creep
% false.

% [trace]  ?- aprecia(vicente, c).
%    Call: (10) aprecia(vicente, c) ? creep
%    Call: (11) bigKahunaBurger(c) ? creep
%    Fail: (11) bigKahunaBurger(c) ? creep
%    Redo: (10) aprecia(vicente, c) ? creep
%    Call: (11) hamburguer(c) ? creep
%    Call: (12) bigMac(c) ? creep
%    Exit: (12) bigMac(c) ? creep
%    Exit: (11) hamburguer(c) ? creep
%    Exit: (10) aprecia(vicente, c) ? creep
% true ;
%    Redo: (11) hamburguer(c) ? creep
%    Call: (12) bigKahunaBurger(c) ? creep
%    Fail: (12) bigKahunaBurger(c) ? creep
%    Redo: (11) hamburguer(c) ? creep
%    Call: (12) whopper(c) ? creep
%    Fail: (12) whopper(c) ? creep
%    Fail: (11) hamburguer(c) ? creep
%    Fail: (10) aprecia(vicente, c) ? creep
% false

% [trace]  ?- aprecia(vicente, d).
%    Call: (10) aprecia(vicente, d) ? creep
%    Call: (11) bigKahunaBurger(d) ? creep
%    Fail: (11) bigKahunaBurger(d) ? creep
%    Redo: (10) aprecia(vicente, d) ? creep
%    Call: (11) hamburguer(d) ? creep
%    Call: (12) bigMac(d) ? creep
%    Fail: (12) bigMac(d) ? creep
%    Redo: (11) hamburguer(d) ? creep
%    Call: (12) bigKahunaBurger(d) ? creep
%    Fail: (12) bigKahunaBurger(d) ? creep
%    Redo: (11) hamburguer(d) ? creep
%    Call: (12) whopper(d) ? creep
%    Exit: (12) whopper(d) ? creep
%    Exit: (11) hamburguer(d) ? creep
%    Exit: (10) aprecia(vicente, d) ? creep
% true.

% [trace]  ?- aprecia(vicente, X).
%    Call: (10) aprecia(vicente, _68206) ? creep
%    Call: (11) bigKahunaBurger(_68206) ? creep
%    Exit: (11) bigKahunaBurger(b) ? creep
%    Fail: (10) aprecia(vicente, _68206) ? creep
% false.