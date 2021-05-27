:- module(
       funcionario, % nome do modulo
       [ funcionario/5 ] % predicados a serem exportados no formato funtor/aridade
   ).

:- use_module(library(persistency)).

% esquema da relação
:- persistent
   funcionario(matricula:positive_integer,
               nome:atom,
               departamento:nonneg,
               salario:positive_integer,
               matricula_gerente:positive_integer).
% o persistent criará: 
% funcionario/5
% assert_funcionario/5
% retract_funcionario/5
% retractall_funcionario/5
            
:- initialization(db_attach('tbl_funcionario.pl', [])).
% assim que o modulo for importado, será executado o que está em initialzation

% with_mutex(Chave, Predicado)
% quando o predicado termina de ser executado, a chave é liberada e entregue ao proximo da fila

insere(MatFunc, Nome, Departamento, Salario, MatriculaGerente):-
    with_mutex(funcionario,
               assert_funcionario(MatFunc, Nome, Departamento,
                                  Salario, MatriculaGerente)).

remove(MatFunc):-
    with_mutex(funcionario,
               retract_funcionario(MatFunc, _Nome, _Departamento,
                                   _Salario, _MatriculaGerente)).

atualiza(MatFunc, Nome, Departamento, Salario, MatriculaGerente):-
    with_mutex(funcionario,
               ( retractall_funcionario(MatFunc, _Nome, _Departamento,
                                        _Salario, _MatriculaGerente),
                 assert_funcionario(MatFunc, Nome, Departamento,
                                    Salario, MatriculaGerente)) ).

sincroniza :-
    db_sync(gc(always)). 
    % serve para sincronizar o arquivos
% mantem apenas os dados assert, os retract eliminam os seus respectivos asserts, 
% mantendo apenas os que estão no arquivo tbl_funcionario, no banco de dados.
