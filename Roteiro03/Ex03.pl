%Ex 3

intercala2([],[],[]).
intercala2(A,[],A).
intercala2([],B,B).
intercala2([A|As],[B|Bs],[[A,B]|X]) :- intercala2(As,Bs,X).