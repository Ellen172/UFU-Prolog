:- module(
       departamento,
       [ departamento/3 ]).

:- use_module(library(persistency)).

:- persistent
   departamento( numero:nonneg,
                 nome:atom,
                 matrícula_gerente:positive_integer ).

:- initialization(db_attach('tbl_departamento.pl', [])).

insere(Numero, Nome, MatriculaGerente):-
    with_mutex(departamento,
               assert_departamento(Numero, Nome, MatriculaGerente)).

remove(Numero):-
    with_mutex(departamento,
               assert_departamento(Numero, _Nome, _MatriculaGerente)).

atualiza(Numero, Nome, MatriculaGerente):-
    with_mutex(departamento,
               ( retractall_departamento(Numero, Nome, MatriculaGerente),
                 assert_departamento(Numero, Nome, MatriculaGerente)) ).
