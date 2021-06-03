# Biblioteca 
use_module(library(http/json)).

# Transformando prolog para json
?- json_read(current_input, Termo).
{ "Alunos": [
    { "nome": "Aldovandro Cantagalo",
        "notas": [ 20, 15, 35 ]  },
    { "nome": "Anna Karenina",
        "notas": [ 20, 30, 50 ] },
    { "nome": "Pedro de Alvarenga",
        "notas": [ 16, 20, 39 ] }
    ]}
Termo = json([Alunos=[
    json([nome='Aldovandro Cantagalo',notas=[20,15,35]]),
    json([nome='Anna Karenina',notas=[20,30,50]]),
    json([nome='Pedro de Alvarenga',notas=[16,20,39]])]
    ]).

# Transformando json para prolog
?- json_write_dict(current_output, 
    json(['Alunos'=
        [json([nome='Ellen', notas=[20, 10, 40]])]
    ])).
{"Alunos": [ {"nome":"Ellen", "notas": [20, 10, 40 ]} ]}
true.

?- json_write_dict(current_output, json(['Alunos'=[
    json([nome='Talison', notas=[4,7,8]]),
    json([nome='Catia', notas=[3,4,5]]),
    json([nome='Talison', notas=[4,7,8]])]])).
    {
      "Alunos": [
        {"nome":"Talison", "notas": [4, 7, 8 ]},
        {"nome":"Catia", "notas": [3, 4, 5 ]},
        {"nome":"Talison", "notas": [4, 7, 8 ]}
      ]
    }
    true.