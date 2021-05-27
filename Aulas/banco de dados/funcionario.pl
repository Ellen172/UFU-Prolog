/* Funcionario */
/* MatFunc, Nome, NumDepto, Salario, MatGerente */

:- dynamic funcionario/5.

funcionario(13, 'Marcelo', 0, 3000, 19).
funcionario(21, 'Joana'  , 1, 2000, 13).
funcionario(35, 'Bruno'  , 1, 2200, 21).
funcionario(38, 'Wagner' , 1, 1600, 35).
funcionario(43, 'Silvia' , 2, 2500, 13).
funcionario(61, 'Tiago'  , 1, 1700, 21).
funcionario(89, 'Marcia' , 1, 2300, 35).
funcionario(42, 'Mirela' , 1, 1700, 35).

% Exemplos de consultas

/*
   Gerar todas as tuplas para os funcionarios do departamento 1 
   que ganhem acima de 2100.
*/

seleciona(MatFunc, Nome, NumDepto, Salario, MatGerente):-
    funcionario(MatFunc, Nome, NumDepto, Salario, MatGerente),
    NumDepto = 1, Salario > 2100.


projeta(Nome, MatFunc, Salario):-
    funcionario(MatFunc, Nome, _NumDepto, Salario, _MatGerente).


sel_depois_proj(Nome, MatFunc, Salario):-
    funcionario(MatFunc, Nome, 1, Salario, _MatGerente),
    Salario > 2100.
