max(X,Y,Y):- X=<Y, !. %ao achar um true, o programa se encerra
max(X,Y,X):- X>Y. %se não houver true na primeira o programa entra no segundo caso.