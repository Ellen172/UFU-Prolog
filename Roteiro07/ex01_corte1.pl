max(X,Y,Y):- X =< Y, !.
max(X,Y,X):- X>Y.

% [trace]  ?- max(3,5,X).
%    Call: (10) max(3, 5, _17218) ? creep
%    Call: (11) 3=<5 ? creep
%    Exit: (11) 3=<5 ? creep
%    Exit: (10) max(3, 5, 5) ? creep
% X = 5.

% [trace]  ?- max(3,5,5).
%    Call: (10) max(3, 5, 5) ? creep
%    Call: (11) 3=<5 ? creep
%    Exit: (11) 3=<5 ? creep
%    Exit: (10) max(3, 5, 5) ? creep
% true.

% [trace]  ?- max(3,5,3).
%    Call: (10) max(3, 5, 3) ? creep
%    Call: (11) 3>5 ? creep
%    Fail: (11) 3>5 ? creep
%    Fail: (10) max(3, 5, 3) ? creep
% false.

% [trace]  ?- max(5,3,X).
%    Call: (10) max(5, 3, _21024) ? creep
%    Call: (11) 5=<3 ? creep
%    Fail: (11) 5=<3 ? creep
%    Redo: (10) max(5, 3, _21024) ? creep
%    Call: (11) 5>3 ? creep
%    Exit: (11) 5>3 ? creep
%    Exit: (10) max(5, 3, 5) ? creep
% X = 5.

% [trace]  ?- max(5,3,5).
%    Call: (10) max(5, 3, 5) ? creep
%    Call: (11) 5>3 ? creep
%    Exit: (11) 5>3 ? creep
%    Exit: (10) max(5, 3, 5) ? creep
% true.

% [trace]  ?- max(5,3,3).
%    Call: (10) max(5, 3, 3) ? creep
%    Call: (11) 5=<3 ? creep
%    Fail: (11) 5=<3 ? creep
%    Redo: (10) max(5, 3, 3) ? creep
%    Fail: (10) max(5, 3, 3) ? creep
% false.
