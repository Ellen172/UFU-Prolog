cardinal([N]) --> zero(N).
cardinal([N]) --> unidade(N).
cardinal([A,B]) --> dez(A,B).
cardinal([N,0]) --> dezena(N).
cardinal([A,B]) --> dezena(A), [e], unidade(B).
cardinal([N,0,0]) --> cento(N).
cardinal([A,0,B]) --> cento(A), [e], unidade(B).
cardinal([A,B,C]) --> cento(A), [e], dez(B,C).
cardinal([A,B,0]) --> cento(A), [e], dezena(B).
cardinal([A,B,C]) --> cento(A), [e], dezena(B), [e], unidade(C).
cardinal([N,0,0]) --> centena(N).
cardinal([A,0,B]) --> centena(A), [e], unidade(B).
cardinal([A,B,C]) --> centena(A), [e], dez(B,C).
cardinal([A,B,0]) --> centena(A), [e], dezena(B).
cardinal([A,B,C]) --> centena(A), [e], dezena(B), [e], unidade(C).
cardinal([A,B,C,D]) --> mil(A,B,C,D).

zero(0) --> [zero].

unidade(1) --> [um].
unidade(2) --> [dois].
unidade(3) --> [tres].
unidade(4) --> [quatro].
unidade(5) --> [cinco].
unidade(6) --> [seis].
unidade(7) --> [sete].
unidade(8) --> [oito].
unidade(9) --> [nove].

dez(1,0) --> [dez].
dez(1,1) --> [onze].
dez(1,2) --> [doze].
dez(1,3) --> [treze].
dez(1,4) --> [quatorze].
dez(1,5) --> [quinze].
dez(1,6) --> [dezesseis].
dez(1,7) --> [dezessete].
dez(1,8) --> [dezoito].
dez(1,9) --> [dezenove].

dezena(2) --> [vinte].
dezena(3) --> [trinta].
dezena(4) --> [quarenta].
dezena(5) --> [cinquenta].
dezena(6) --> [sessenta].
dezena(7) --> [setenta].
dezena(8) --> [oitenta].
dezena(9) --> [noventa].

cento(100) --> [cem].
centena(1) --> [cento].
centena(2) --> [duzentos].
centena(3) --> [trezentos].
centena(4) --> [quatrocentos].
centena(5) --> [quinhentos].
centena(6) --> [seiscentos].
centena(7) --> [setecentos].
centena(8) --> [oitocentos].
centena(9) --> [novecentos].

mil(1, 0, 0, 0) --> [mil].