principal :-
    open('nomes.txt', read, F), 
    read(F, N1), 
    read(F, N2), 
    read(F, N3), 
    close(F), 
    write([N1, N2, N3]), nl.

%não funciona