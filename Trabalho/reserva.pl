:- dynamic reserva/10.

reserva (Id_reserva, % chave
    Id_ambiente, % chave
    % proveniento da tabela 'ambiente'
    Data_reserva, % chave
    Hora_reserva, % chave
    Id_usuario, % chave
    % proveniente da tabela 'usuario'
    Res_descricao, 
    Res_datetime, 
    Res_user_inclusao, 
    Res_data_alteracao, 
    Res_user_alteracao).
