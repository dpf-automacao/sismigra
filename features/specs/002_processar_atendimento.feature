#language: pt

@all_features

Funcionalidade: Processar Atendimento SISMIGRA

# PROCESSAR ATENDIMENTO EM ABERTO

@processar_atendimento_registro_aberto
Cenario: Processar Atendimento de Solicitação de Registro em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Registro" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_aberto
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Autorização de Residência" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_aberto
Cenario: Processar Atendimento de Alteração de Prazo em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Alteração de Prazo" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_aberto
Cenario: Processar Atendimento de Recadastramento Extemporâneo em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Recadastramento Extemporâneo" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_aberto
Cenario: Processar Atendimento de Substituição de CRNM em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Substituição de CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_segunda_via_crnm_aberto
Cenario: Processar Atendimento de Segunda via de CRNM em Aberto
    Quando for processar um atendimento do Tipo de solicitacao "Segunda via de CRNM" na Situacao "Em Aberto"
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
    Quando for processar um atendimento do Tipo de solicitacao "Registro" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_analise
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia em Análise
    Quando for processar um atendimento do Tipo de solicitacao "Autorização de Residência" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_analise
Cenario: Processar Atendimento de Alteração de Prazo em Análise
    Quando for processar um atendimento do Tipo de solicitacao "Alteração de Prazo" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_analise
Cenario: Processar Atendimento de Recadastramento Extemporâneo em Análise
    Quando for processar um atendimento do Tipo de solicitacao "Recadastramento Extemporâneo" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_analise
Cenario: Processar Atendimento de Substituição de CRNM em Análise
    Quando for processar um atendimento do Tipo de solicitacao "Substituição de CRNM" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_segunda_via_crnm_analise
Cenario: Processar Atendimento de Segunda via de CRNM em Análise
    Quando for processar um atendimento do Tipo de solicitacao "Segunda via de CRNM" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

# PROCESSAR ATENDIMENTO SUSPENSO

@processar_atendimento_registro_suspenso
Cenario: Processar Atendimento de Registro Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Registro" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_suspenso
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Autorização de Residência" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_suspenso
Cenario: Processar Atendimento de Alteração de Prazo Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Alteração de Prazo" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_suspenso
Cenario: Processar Atendimento de Recadastramento Extemporâneo Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Recadastramento Extemporâneo" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_suspenso
Cenario: Processar Atendimento de Substituição de CRNM Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Substituição de CRNM" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_segunda_via_crnm_suspenso
Cenario: Processar Atendimento de Segunda via de CRNM Suspenso
    Quando for processar um atendimento do Tipo de solicitacao "Segunda via de CRNM" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

# PROCESSAR ATENDIMENTO NA SITUAÇÃO EM PROCESSAMENTO

@processar_atendimento_registro_processamento
Cenario: Processar Atendimento de Registro Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Registro" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_autorizacao_residencia_processamento
Cenario: Processar Atendimento de Solicitação de Autorização de Residencia Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Autorização de Residência" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_alteracao_prazo_processamento
Cenario: Processar Atendimento de Alteração de Prazo Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Alteração de Prazo" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_recadastramento_extemporaneo_processamento
Cenario: Processar Atendimento de Recadastramento Extemporâneo Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Recadastramento Extemporâneo" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@processar_atendimento_substituicao_crnm_processamento
Cenario: Processar Atendimento de Substituição de CRNM Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Substituição de CRNM" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@tst
@processar_atendimento_segunda_via_crnm_processamento
Cenario: Processar Atendimento de Segunda via de CRNM Em Processamento
    Quando for processar um atendimento do Tipo de solicitacao "Segunda via de CRNM" na Situacao "Em Processamento"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

# @suspender_atendimento_registro_aberto
# Cenario: Suspender Atendimento de Registro na situação "Aberto"
#     Quando suspender um atendimento de "Registro" na situação "Aberto"