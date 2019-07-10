#language: pt

Funcionalidade: Consultar Situação do Requerimento

   @consultar_situacao_requerimento
   Esquema do Cenário: Consultar Situação Requerimento
    Quando consultar um requerimento "<nr_requerimento>" na situação "<situacao>"
    Então deve exibir o registro correspondente
    E exibir a legenda para a situação

    Exemplos:
    | nr_requerimento    | situacao  |
    | 201809190930100514 | Em Aberto |
