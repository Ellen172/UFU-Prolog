% função seleciona aquele com numDepto 1 e salario maior que 2100
seleciona(MatFun, Nome, NumDepto, Salario, MatGerente) :-
    funcionario(MatFunc, Nome, NumDepto, Salario, MatGerente),
    NumDepto = 1, Salario > 2100.
