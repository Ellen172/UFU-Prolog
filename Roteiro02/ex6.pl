%Ex. 6.

viagem(X,Y, vai_de_carro(X,Y)) :- deCarro(X,Y).
viagem(X,Y, vai_de_trem(X,Y)) :- deTrem(X,Y).
viagem(X,Y, vai_de_aviao(X,Y)) :- deAviao(X,Y).

viagem(X,Y, vai_de_carro(X,W,Z)) :- deCarro(X,W), viagem(W,Y, Z).
viagem(X,Y, vai_de_trem(X,W,Z)) :- deTrem(X,W), viagem(W,Y, Z).
viagem(X,Y, vai_de_aviao(X,W,Z)) :- deAviao(X,W), viagem(W,Y, Z).