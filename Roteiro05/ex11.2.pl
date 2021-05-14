s(s(SN,SV)) --> sn(sujeito,SN), sv(SV).
sn(_, sn(Det,N)) --> det(Det), n(N).
sn(X, sn(Pro)) --> pro(X,Pro).
sv(sv(V,SN)) --> v(V), sn(objeto,SN).
sv(sv(V)) --> v(V).

det(det(o)) --> [o]. 
det(det(a)) --> [a].              
n(n(mulher)) --> [mulher].       
n(n(homem)) --> [homem].
v(v(bate)) --> [bate].

pro(sujeito,pro(ele)) --> [ele].
pro(sujeito,pro(ela)) --> [ela].
pro(objeto,pro(nele)) --> [nele].
pro(objeto,pro(nela)) --> [nela].

% ?- s(A,[ele,bate],[]).
% A = s(sn(pro(ele)), sv(v(bate))) ;
% false.

% ?- s(A, [a, mulher, bate, nele], []).
% A = s(sn(det(a), n(mulher)), sv(v(bate), sn(pro(nele)))) ;
% false.

% ?- s(A, [o, homem, bate], []).
% A = s(sn(det(o), n(homem)), sv(v(bate))) ;
% false.
