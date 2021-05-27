:- module( reservas, [reservas/10]).
:- use_module(library(persistency)).

:- persistent
    reservas(   id_reserva: integer, % chave
                id_ambiente: integer, % chave -> proveniento da tabela 'ambiente'
                data_reserva: atom, % chave
                hora_reserva: atom, % chave
                id_usuario: integer, % chave -> proveniente da tabela 'usuario'
                res_descricao: atom, 
                res_datetime: atom, 
                res_user_inclusao: atom, 
                res_data_alteracao: atom, 
                res_user_alteracao: atom ).

:- initialization(db_attach('tabela_reservas.pl', [])).
