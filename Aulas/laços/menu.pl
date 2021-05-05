menu :- 
    repeat, % repete os criterios do menu
    write('1 - Opcao A.'), nl, 
    write('2 - Opcao B.'), nl, 
    write('3 - Sair.'), nl, nl,
    write('Digite a opcao: '),
    read(Opcao), % o usuário escreve a Opcao que deseja
    processa(Opcao), 
    Opcao = 3. % se Opcao unifica com 3 dará verdadeiro aqui e irá parar o repeat

processa(1) :- !,
    write('opcao 1'), nl, nl.
processa(2) :- !,
    write('opcao 2'), nl, nl.
processa(3).

% ?-menu.

% 1 - Opcao A.
% 2 - Opcao B.
% 3 - Sair.

% Digite a opcao:
% 1
% opcao 1

% 1 - Opcao A.
% 2 - Opcao B.
% 3 - Sair.

% Digite a opcao:
% 2
% opcao 2

% 1 - Opcao A.
% 2 - Opcao B.
% 3 - Sair.

% Digite a opcao:
% 3
% true