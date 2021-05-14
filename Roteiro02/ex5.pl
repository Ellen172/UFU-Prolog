%Ex. 5. 

viagem(X,Y, vai(X,Y)) :- deCarro(X,Y); deTrem(X,Y); deAviao(X,Y).

viagem(X,Y, vai_de(X,W,Z)) :- deCarro(X,W), viagem(W,Y, Z).
viagem(X,Y, vai_de(X,W,Z)) :- deTrem(X,W), viagem(W,Y, Z).
viagem(X,Y, vai_de(X,W,Z)) :- deAviao(X,W), viagem(W,Y, Z).
