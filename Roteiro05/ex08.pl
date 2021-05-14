s(A-C-D) :- foo(A-B),bar(B-C),wiggle(C-D).

foo([chu|X]-X).
foo(A-C):- foo(A-B),foo(B-C).

bar(X-Y) :- mar(X-Z),zar(Z-Y).
    mar(A-C) :- me(A-B),my(B-C).
        me([eu|A]-A).
        my([sou|B]-B).
    zar(D-F) :- blar(D-E),car(E-F).
        blar([um|D]-D).
        car([trem|E]-E).

wiggle([tchu|X]-X).
wiggle(A-C) :- wiggle(A-B),wiggle(B-C).

/*
?- s(X,[]).
X = [chu, eu, sou, um, trem, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu] ;
*/