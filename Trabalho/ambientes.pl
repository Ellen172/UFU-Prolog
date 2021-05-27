:- module( ambientes, [ambientes/7] ).
:- use_module(library(persistency)).

:- persistent
    ambientes(  id_ambiente: integer, % chave
                id_categoria_ambiente: integer, % proveniente da tabela 'categoria_ambiente'
                amb_descricao_ambiente: atom, 
                amb_hora_inicio: integer, 
                amb_hora_termino: integer, 
                amb_tempo_reserva: integer, 
                amb_qtd_convidados: integer ).

:- initialization(db_attach('tabela_ambientes.pl', [])).
