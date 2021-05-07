:- module( funcionario, [] ).
% importando a bilbioteca
:- use_module(library(persistency)). 
% esquema de relações
:- persistent funcionario(matricula: positive_integer, 
                nome: atom, 
                departamento: nonneg,
                salario: positive_integer, 
                matricula_gerente: positive_integer).
% anexa o arquivo que servira como armazem de fatos
:- initialization(db_attach('tbl_persistency.pl', [])).

% a biblioteca persistency/1 define:
% funcionario/5
% assert_funcionario/5
% retrac_funcionario/5
% retractall_funcionar/5

