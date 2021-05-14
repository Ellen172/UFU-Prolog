%Ex. 2.

nao(falso).
ou(verdade,verdade).
ou(verdade,falso).
ou(falso,verdade).
e(verdade,verdade).
equiv(verdade,verdade).
equiv(falso,falso).
impl(verdade,verdade).
impl(falso,verdade).
impl(falso,falso).


prova(W) :- W.
