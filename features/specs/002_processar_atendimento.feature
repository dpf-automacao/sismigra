#language: pt

Funcionalidade: Processar Atendimento SISMIGRA

@processar_atendimento

Cenario: Processar Atendimento de Solicitação de Registro em Aberto
    Quando for processar um atendimento de Registro em Aberto
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento