:- module(
       funcionario,
       [ funcionario/5 ]
   ).

:- use_module(library(persistency)).

:- persistent
   funcionario(matrícula:positive_integer,
               nome:atom,
               departamento:nonneg,
               salario:positive_integer,
               matrícula_gerente:positive_integer).

:- initialization(db_attach('tbl_funcionario.pl', [])).

insere(MatFunc, Nome, Departamento, Salario, MatrículaGerente):-
    with_mutex(funcionario,
               assert_funcionario(MatFunc, Nome, Departamento,
                                  Salario, MatrículaGerente)).

remove(MatFunc):-
    with_mutex(funcionario,
               retract_funcionario(MatFunc, _Nome, _Departamento,
                                   _Salario, _MatrículaGerente)).

atualiza(MatFunc, Nome, Departamento, Salario, MatrículaGerente):-
    with_mutex(funcionario,
               ( retractall_funcionario(MatFunc, _Nome, _Departamento,
                                        _Salario, _MatrículaGerente),
                 assert_funcionario(MatFunc, Nome, Departamento,
                                    Salario, MatrículaGerente)) ).

sincroniza :-
    db_sync(gc(always)).
