
% MODELO JSON
% ?- json_read(current_input, Termo).
% { "Alunos": [
%     { "nome": "Aldovandro Cantagalo",
%         "notas": [ 20, 15, 35 ]  },
%     { "nome": "Anna Karenina",
%         "notas": [ 20, 30, 50 ] },
%     { "nome": "Pedro de Alvarenga",
%         "notas": [ 16, 20, 39 ] }
%     ]}

% MODELO PROLOG
% Termo = 
% json([Alunos=[
%     json([nome='Aldovandro Cantagalo',notas=[20,15,35]]),
%     json([nome='Anna Karenina',notas=[20,30,50]]),
%     json([nome='Pedro de Alvarenga',notas=[16,20,39]])]
%     ]).


