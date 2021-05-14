%Ex 01

membro(X,[X|_]).
membro(X,[_|T]) :- membro(X,T).

% [trace]  ?- membro(a,[1,2,a,b]).	
%   Call: (10) membro(a, [1, 2, a, b]) ? creep %chamada inicial
%   Call: (11) membro(a, [2, a, b]) ? creep %chamada da cauda
%   Call: (12) membro(a, [a, b]) ? creep %chamada da cauda
%   Exit: (12) membro(a, [a, b]) ? creep %a true para [a,b]
%   Exit: (11) membro(a, [2, a, b]) ? creep %como a anterior é true, essa é true
%   Exit: (10) membro(a, [1, 2, a, b]) ? creep %como a anterior é true, essa é true
% true ;
%   Redo: (12) membro(a, [a, b]) ? creep %retorna para a chamada true 
%   Call: (13) membro(a, [b]) ? creep %chamada da cauda
%   Call: (14) membro(a, []) ? creep %chamada da cauda 
%   Fail: (14) membro(a, []) ? creep %a não está em []
%   Fail: (13) membro(a, [b]) ? creep %como a anterior é falso, essa é falso 
%   Fail: (12) membro(a, [a, b]) ? creep %como a anterior é falso, essa é falso 
%   Fail: (11) membro(a, [2, a, b]) ? creep %como a anterior é falso, essa é falso 
%   Fail: (10) membro(a, [1, 2, a, b]) ? creep %como a anterior é falso, essa é falso 
% false.


% [trace]  ?- membro(x,[a,b,f,s,x]).
%   Call: (10) membro(x, [a, b, f, s, x]) ? creep
%   Call: (11) membro(x, [b, f, s, x]) ? creep
%   Call: (12) membro(x, [f, s, x]) ? creep
%   Call: (13) membro(x, [s, x]) ? creep
%   Call: (14) membro(x, [x]) ? creep
%   Exit: (14) membro(x, [x]) ? creep
%   Exit: (13) membro(x, [s, x]) ? creep
%   Exit: (12) membro(x, [f, s, x]) ? creep
%   Exit: (11) membro(x, [b, f, s, x]) ? creep
%   Exit: (10) membro(x, [a, b, f, s, x]) ? creep
% true ;
%   Redo: (14) membro(x, [x]) ? creep
%   Call: (15) membro(x, []) ? creep
%   Fail: (15) membro(x, []) ? creep
%   Fail: (14) membro(x, [x]) ? creep
%   Fail: (13) membro(x, [s, x]) ? creep
%   Fail: (12) membro(x, [f, s, x]) ? creep
%   Fail: (11) membro(x, [b, f, s, x]) ? creep
%   Fail: (10) membro(x, [a, b, f, s, x]) ? creep
% false


% [trace]  ?- membro(z, [1,2,a,b]).
%   Call: (10) membro(z, [1, 2, a, b]) ? creep
%   Call: (11) membro(z, [2, a, b]) ? creep
%   Call: (12) membro(z, [a, b]) ? creep
%   Call: (13) membro(z, [b]) ? creep
%   Call: (14) membro(z, []) ? creep
%   Fail: (14) membro(z, []) ? creep
%   Fail: (13) membro(z, [b]) ? creep
%   Fail: (12) membro(z, [a, b]) ? creep
%   Fail: (11) membro(z, [2, a, b]) ? creep
%   Fail: (10) membro(z, [1, 2, a, b]) ? creep
% false.


% [trace]  ?- membro(3, [1,2,4,5]).
%   Call: (10) membro(3, [1, 2, 4, 5]) ? creep
%   Call: (11) membro(3, [2, 4, 5]) ? creep
%   Call: (12) membro(3, [4, 5]) ? creep
%   Call: (13) membro(3, [5]) ? creep
%   Call: (14) membro(3, []) ? creep
%   Fail: (14) membro(3, []) ? creep
%   Fail: (13) membro(3, [5]) ? creep
%   Fail: (12) membro(3, [4, 5]) ? creep
%   Fail: (11) membro(3, [2, 4, 5]) ? creep
%   Fail: (10) membro(3, [1, 2, 4, 5]) ? creep
% false


% [trace]  ?- membro(X, [1,2,a,b]).
%   Call: (10) membro(_15728, [1, 2, a, b]) ? creep
%   Exit: (10) membro(1, [1, 2, a, b]) ? creep
% X = 1 ;
%   Redo: (10) membro(_15728, [1, 2, a, b]) ? creep
%   Call: (11) membro(_15728, [2, a, b]) ? creep
%   Exit: (11) membro(2, [2, a, b]) ? creep
%   Exit: (10) membro(2, [1, 2, a, b]) ? creep
% X = 2 ;
%   Redo: (11) membro(_15728, [2, a, b]) ? creep
%   Call: (12) membro(_15728, [a, b]) ? creep
%   Exit: (12) membro(a, [a, b]) ? creep
%   Exit: (11) membro(a, [2, a, b]) ? creep
%   Exit: (10) membro(a, [1, 2, a, b]) ? creep
% X = a ;
%   Redo: (12) membro(_15728, [a, b]) ? creep
%   Call: (13) membro(_15728, [b]) ? creep
%   Exit: (13) membro(b, [b]) ? creep
%   Exit: (12) membro(b, [a, b]) ? creep
%   Exit: (11) membro(b, [2, a, b]) ? creep
%   Exit: (10) membro(b, [1, 2, a, b]) ? creep
% X = b ;
%   Redo: (13) membro(_15728, [b]) ? creep
%   Call: (14) membro(_15728, []) ? creep
%   Fail: (14) membro(_15728, []) ? creep
%   Fail: (13) membro(_15728, [b]) ? creep
%   Fail: (12) membro(_15728, [a, b]) ? creep
%   Fail: (11) membro(_15728, [2, a, b]) ? creep
%   Fail: (10) membro(_15728, [1, 2, a, b]) ? creep
% false.


% [trace]  ?- membro(2,[a,b,Z]).
%   Call: (10) membro(2, [a, b, _21164]) ? creep
%   Call: (11) membro(2, [b, _21164]) ? creep
%   Call: (12) membro(2, [_21164]) ? creep
%   Exit: (12) membro(2, [2]) ? creep
%   Exit: (11) membro(2, [b, 2]) ? creep
%   Exit: (10) membro(2, [a, b, 2]) ? creep
% Z = 2 ;
%   Redo: (12) membro(2, [_21164]) ? creep
%   Call: (13) membro(2, []) ? creep
%   Fail: (13) membro(2, []) ? creep
%   Fail: (12) membro(2, [_21164]) ? creep
%   Fail: (11) membro(2, [b, _21164]) ? creep
%   Fail: (10) membro(2, [a, b, _21164]) ? creep
% false.
