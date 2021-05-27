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

:- initialization(db_attach('tbl_funcionario.pl', [])).
% assim que o modulo for importado, será executado o que está em initialzation

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
