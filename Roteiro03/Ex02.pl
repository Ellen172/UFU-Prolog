% Ex 2

intercala1([],[],[]).
intercala1(A,[],A).
intercala1([],B,B).
intercala1([A|As],[B|Bs],[A,B|X]) :- intercala1(As,Bs,X).

