%Base Relacionamento Familiares
pai(carlos, ana).
pai(carlos,juliana).

%Ex.1. 
homem(carlos).
mulher(ana).
mulher(juliana).
mulher(patricia).
mae(patricia,juliana).
mae(patricia,ana).

%Ex. 2.
%Quem e pai de Ana?
%?- pai(X,ana).
%X = carlos.

%Quem e pai de Quem?
%?- pai(X,Y).
%X = carlos,
%Y = ana ;
%X = carlos,
%Y = juliana.

%Quem e o avo de Ana?
%?- pai(Y,ana), pai(X, Y).
%false.

%Ex. 3.
avo(X,Y) :- pai(X,Z), pai(Z, Y).
%%Quem sao os netos de Joao?
%?- avo(joao,X).
%false. Se joao não esta declarado.

pai(joao,carlos).
%?- avo(joao, X).
%X = ana ;
%X = juliana ;

%Juliana e Ana tem o mesmo pai?
%?- pai(X,ana), pai(X,juliana).
%X = carlos.

% Ex. 4.
avo(X,Y) :- pai(X,Z), mae(Z, Y).
avoh(X,Y) :- mae(X,Z), pai(Z, Y).
avoh(X,Y) :- mae(X,Z), mae(Z, Y).
filho(X,Y) :- pai(Y,X), homem(X).
filho(X,Y) :- mae(Y,X), homem(X).
filha(X,Y) :- (mae(Y,X), mulher(X)).
filha(X,Z) :- (pai(Z,X), mulher(X)). 
irmao(X,Y) :- pai(Z,X), pai(Z,Y), homem(X).
irmao(X,Y) :- mae(Z,X), mae(Z,Y), homem(X).
irma(X,Y) :- pai(Z,X), pai(Z,Y), mulher(X).
irma(X,Y) :- mae(Z,X), mae(Z,Y), mulher(X).
irmaos(X,Y) :- pai(Z,X), pai(Z,Y).
irmaos(X,Y) :- mae(Z,X), mae(Z,Y).
tio(X, Y) :- irmaos(X,Z), pai(Z,Y), homem(X).
tio(X, Y) :- irmaos(X,Z), mae(Z,Y), homem(X).
tia(X, Y) :- irmaos(X,Z), pai(Z,Y), mulher(X).
tia(X, Y) :- irmaos(X,Z), mae(Z,Y), mulher(X).
primo(X,Y) :- tio(W,X), pai(W,Y), homem(X).
primo(X,Y) :- tia(W,X), mae(W,Y), homem(X).
prima(X,Y) :- tio(W,X), pai(W,Y), mulher(X).
prima(X,Y) :- tia(W,X), mae(W,Y), mulher(X).

%Base Mundo do Harry Potter
elfo_domestico(dobby).
bruxo(hermione).
bruxo('McGonagall').
bruxo(rita_skeeter).
magico(X) :- elfo_domestico(X).
magico(X) :− feiticeiro(X).
magico(X) :- bruxo(X).

%Ex. 5. 
%?- magico(elfo_domestico).
%false.
%'elfo_domestico' está sendo usado como um atomo, mas o mesmo não foi declarado como elfo_domestico(), feiticeiro() ou bruxo(), portanto magico(elfo_domestico) = false.

%Ex. 6. 
%?- feiticeiro(harry).
%ERROR: Unknown procedure: feiticeiro/1 (DWIM could not correct goal)
%O atomo 'harry' não foi declarado em nenhuma clausula e não foi declarado ninguém como feiticeiro. O programa retornará um erro por isso.

%Ex. 7. 
%?- magico(feiticeiro).
%false.
%o atomo 'feiticeiro' não foi declarado em nenhuma clausula como atomo.

%Ex. 8. 
%?- magico(’McGonagall’).
%true. 

%Ex. 9. 
%?- magico(Hermione).
%Hermione = dobby ;
%Hermione = hermione ;
%Hermione = 'McGonagall' ;
%Hermione = rita_skeeter.
%Hermione está definida como variável, nesse caso magico(Hermione) buscará quem é verdadeiro para magico. 

%Base Minigramática
palavra(artigo,um).
palavra(artigo,qualquer).
palavra(nome,criminoso).
palavra(nome,'mac lanche feliz').
palavra(verbo,come).
palavra(verbo,adora).
sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5):-palavra(artigo,Palavra1), palavra(nome,Palavra2), palavra(verbo,Palavra3), palavra(artigo,Palavra4), palavra(nome,Palavra5).

% Ex. 10. 
%sentenca(X,Y,Z,W,V).

% Ex. 11. 
%um criminoso come um criminoso.
%um criminoso come um	'mac lanche feliz'.
%um criminoso come qualquer criminoso.
%um criminoso como qualquer 'mac lanche feliz'.
%um criminoso adora um criminoso.
%um criminoso adora um 'mac lanche feliz'.
%um criminoso adora qualquer criminoso.
%um criminoso adora qualquer 'mac lanche feliz'.
%um 'mac lanche feliz' come um criminoso.
%um 'mac lanche feliz' come um 'mac lanche feliz'.
%um 'mac lanche feliz' come qualquer criminoso.
%um 'mac lanche feliz' come qualquer 'mac lanche feliz'.
%um 'mac lanche feliz' adora um criminoso.
%um 'mac lanche feliz' adora um 'mac lanche feliz'.
%um 'mac lanche feliz' adora qualquer criminoso.
%um 'mac lanche feliz' adora qualquer 'mac lanche feliz'.
%qualquer criminoso come um criminoso.
%qualquer criminoso come um	'mac lanche feliz'.
%qualquer criminoso come qualquer criminoso.
%qualquer criminoso como qualquer 'mac lanche feliz'.
%qualquer criminoso adora um criminoso.
%qualquer criminoso adora um 'mac lanche feliz'.
%qualquer criminoso adora qualquer criminoso.
%qualquer criminoso adora qualquer 'mac lanche feliz'.
%qualquer 'mac lanche feliz' come um criminoso.
%qualquer 'mac lanche feliz' come um 'mac lanche feliz'.
%qualquer 'mac lanche feliz' come qualquer criminoso.
%qualquer 'mac lanche feliz' come qualquer 'mac lanche feliz'.
%qualquer 'mac lanche feliz' adora um criminoso.
%qualquer 'mac lanche feliz' adora um 'mac lanche feliz'.
%qualquer 'mac lanche feliz' adora qualquer criminoso.
%qualquer 'mac lanche feliz' adora qualquer 'mac lanche feliz'.

%Base Alunos
aluno(joao,poo).
aluno(pedro,poo).
aluno(maria,pl).
aluno(rui,pl).
aluno(manuel,pl).
aluno(pedro,pl).
aluno(rui,ed1).

% Ex. 12.
%true.

%Ex. 13.
%?- aluno(joao,pl).
%false.

%Ex. 14 
%?- aluno(rui,poo).
%false

% Ex. 15.
%?- aluno(joao,ed1), aluno(maria,ed1).
%false.

%Ex. 16.
%?- aluno(X, pl).
%X = maria ;
%X = rui ;
%X = manuel ;
%X = pedro.

% Ex. 17.
%?- aluno(rui, X).
%X = pl ;
%X = ed1.

%Ex. 18.
estuda(joao).
estuda(maria).
estuda(manuel).
%true.

%Ex. 19.
%?- aluno(X,pl),estuda(X).
%X = maria ;
%X = manuel ;
%false.
%Se X for igual a maria ou manuel será verdadeiro. O que mostra que apenas Maria e Manuel estudam e estão matriculados em pl.

%Ex. 20.
fazpl(X) :- aluno(X, pl).