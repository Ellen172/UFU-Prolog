:- load_files( [ funcionario, departamento ],
	            [ if(not_loaded), % só carrega o módulo uma vez
                silent(true) % carrega o módulo sem imprimir mensagem
	            ]).

junta(MatFunc, NomeF, NumDeptoF, Salario, MatGerenteF,
      NumDeptoF, NomeDepD, MatGerenteD):-
    funcionario(MatFunc, NomeF, NumDeptoF, Salario, MatGerenteF),
    departamento(NumDeptoF, NomeDepD, MatGerenteD),
    write((MatFunc, NomeF, NumDeptoF, Salario, MatGerenteF, 
          NumDeptoF, NomeDepD, MatGerenteD)), nl, fail.
