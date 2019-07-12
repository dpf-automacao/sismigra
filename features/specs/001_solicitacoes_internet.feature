#language: pt

@all_req_imigrantes_internet

Funcionalidade: Procedimentos Internet SISMIGRA

@req_registro_imigrante
Cenario: Requerimento de Registro do Imigrante
    Quando realizar a solicitacao de "Registro" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_autorizacao_residencia_imigrante
Cenario: Requerimento de Autorizacao de Residencia do Imigrante
    Quando realizar a solicitacao de "Autorizacao_Residencia" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_alteracao_prazo_imigrante
Cenario: Requerimento de Autorizacao de Alteracao de Prazo do Imigrante
    Quando realizar a solicitacao de "Alteracao_de_Prazo" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_recad_extemporaneo_imigrante
Cenario: Requerimento de Recadastramento Extemporaneo do Imigrante
    Quando realizar a solicitacao de "Recadastramento_Extemporaneo" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_substituicao_crnm_imigrante
Cenario: Requerimento de Substituicao de CRNM do Imigrante
    Quando realizar a solicitacao de "Substituicao_de_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_segunda_via_crnm_imigrante
Cenario: Requerimento de Segunda via CRNM do Imigrante
    Quando realizar a solicitacao de "Segunda_via_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente
