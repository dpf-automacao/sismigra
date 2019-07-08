#language: pt

@all_features

Funcionalidade: Processar Atendimento SISMIGRA

# PROCESSAR ATENDIMENTO EM ABERTO

@processar_atendimento_registro_aberto
Cenario: Processar Atendimento de Solicitação de Registro em Aberto
    Quando for processar um atendimento de "Registro" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_aberto
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia em Aberto
    Quando for processar um atendimento de "Autorização de Residência" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_aberto
Cenario: Processar Atendimento de Alteração de Prazo em Aberto
    Quando for processar um atendimento de "Alteração de Prazo" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_aberto
Cenario: Processar Atendimento de Recadastramento Extemporâneo em Aberto
    Quando for processar um atendimento de "Recadastramento Extemporâneo" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_aberto
Cenario: Processar Atendimento de Substituição de CRNM em Aberto
    Quando for processar um atendimento de "Substituição de CRNM" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_segunda_via_crnm_aberto
Cenario: Processar Atendimento de Segunda via de CRNM em Aberto
    Quando for processar um atendimento de "Segunda via de CRNM" em "Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

# PROCESSAR ATENDIMENTO EM ANALISE

@processar_atendimento_registro_analise
Cenario: Processar Atendimento de Registro em Análise
    Quando for processar um atendimento de "Registro" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_analise
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia em Análise
    Quando for processar um atendimento de "Autorização de Residência" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_analise
Cenario: Processar Atendimento de Alteração de Prazo em Análise
    Quando for processar um atendimento de "Alteração de Prazo" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_analise
Cenario: Processar Atendimento de Recadastramento Extemporâneo em Análise
    Quando for processar um atendimento de "Recadastramento Extemporâneo" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_analise
Cenario: Processar Atendimento de Substituição de CRNM em Análise
    Quando for processar um atendimento de "Substituição de CRNM" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_segunda_via_crnm_analise
Cenario: Processar Atendimento de Segunda via de CRNM em Análise
    Quando for processar um atendimento de "Segunda via de CRNM" em "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento