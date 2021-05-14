%Ex 4

intercala3([],[],[]).
intercala3(A,[],A).
intercala3([],B,B).
intercala3([A|As],[B|Bs],[junta(A,B)|X]) :- intercala3(As,Bs,X).