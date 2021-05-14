% Ex 19

npermutacaoAcum(1, Ac, Ac).
npermutacaoAcum(M, Ac, N) :- 
    M > 1,
    NovoAc is M * Ac,
    NovoM is M - 1,
    npermutacaoAcum(NovoM, NovoAc, N).

npermutacao(M, N) :- npermutacaoAcum(M, 1, N).
