#language: pt

@all_features_1

Funcionalidade: Procedimentos Internet SISMIGRA

@req_registro_imigrante
Cenario: Requerimento de Registro do Imigrante
    Quando solicitar o requerimento de "Registro" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_autorizacao_residencia_imigrante
Cenario: Requerimento de Autorizacao de Residencia do Imigrante
    Quando solicitar o requerimento de "Autorizacao_Residencia" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_alteracao_prazo_imigrante
Cenario: Requerimento de Autorizacao de Alteracao de Prazo do Imigrante
    Quando solicitar o requerimento de "Alteracao_de_Prazo" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_recad_extemporaneo_imigrante
Cenario: Requerimento de Recadastramento Extemporaneo do Imigrante
    Quando solicitar o requerimento de "Recadastramento_Extemporaneo" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_substituicao_crnm_imigrante
Cenario: Requerimento de Substituicao de CRNM do Imigrante
    Quando solicitar o requerimento de "Substituicao_de_CRNM" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@req_segunda_via_crnm_imigrante
Cenario: Requerimento de Segunda via CRNM do Imigrante
    Quando solicitar o requerimento de "Segunda_via_CRNM" de Imigrante
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente
